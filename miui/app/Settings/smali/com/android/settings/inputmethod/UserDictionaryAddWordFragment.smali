.class public Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;
.super Landroid/app/Fragment;
.source "UserDictionaryAddWordFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# instance fields
.field private Cr:Z

.field private mRootView:Landroid/view/View;

.field private nq:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->Cr:Z

    return-void
.end method

.method private io()V
    .locals 5

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->nq:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->d(Landroid/app/Activity;)Ljava/util/ArrayList;

    move-result-object v1

    .line 105
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f080172

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 107
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x1090008

    invoke-direct {v2, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 109
    const v1, 0x1090009

    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 110
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 111
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 112
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->setHasOptionsMenu(Z)V

    .line 57
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 71
    const/4 v0, 0x1

    const v1, 0x7f0b05a6

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 73
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 75
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    const v0, 0x7f040084

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->Cr:Z

    .line 63
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->nq:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;-><init>(Landroid/view/View;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->nq:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;

    .line 127
    invoke-virtual {v0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->ib()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 129
    new-instance v1, Lcom/android/settings/inputmethod/UserDictionaryLocalePicker;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/UserDictionaryLocalePicker;-><init>(Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/preference/PreferenceActivity;->startPreferenceFragment(Landroid/app/Fragment;Z)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->nq:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {v0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->ia()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->aj(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLocaleSelected(Ljava/util/Locale;)V
    .locals 2
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->nq:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->aj(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 147
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 3
    .parameter

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->nq:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    const-string v2, "locale"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->aj(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 86
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 87
    iget-object v1, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->nq:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->P(Landroid/content/Context;)V

    .line 88
    iput-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->Cr:Z

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 118
    iget-boolean v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->Cr:Z

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->nq:Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;->Q(Landroid/content/Context;)V

    .line 121
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 99
    invoke-direct {p0}, Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;->io()V

    .line 100
    return-void
.end method
