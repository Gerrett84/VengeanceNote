.class public Lcom/android/settings/OwnerInfoSettings;
.super Landroid/app/Fragment;
.source "OwnerInfoSettings.java"


# instance fields
.field private bc:Landroid/widget/CheckBox;

.field private bd:Landroid/widget/EditText;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->bd:Landroid/widget/EditText;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 46
    const-string v0, "lock_screen_owner_info"

    invoke-static {v3, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 47
    const-string v0, "lock_screen_owner_info_enabled"

    invoke-static {v3, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 49
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    const v6, 0x7f0800bd

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->bc:Landroid/widget/CheckBox;

    .line 50
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    const v6, 0x7f0800be

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->bd:Landroid/widget/EditText;

    .line 51
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->bd:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v4, p0, Lcom/android/settings/OwnerInfoSettings;->bd:Landroid/widget/EditText;

    if-eqz v5, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 53
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->bc:Landroid/widget/CheckBox;

    if-eqz v5, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 54
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->bc:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/settings/t;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/t;-><init>(Lcom/android/settings/OwnerInfoSettings;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 61
    return-void

    :cond_0
    move v0, v2

    .line 52
    goto :goto_0

    :cond_1
    move v1, v2

    .line 53
    goto :goto_1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    const v0, 0x7f040047

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    .line 40
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settings/OwnerInfoSettings;->a(Landroid/view/View;)V

    .line 41
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->p()V

    .line 67
    return-void
.end method

.method p()V
    .locals 3

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings;->bd:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    const-string v2, "lock_screen_owner_info"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 73
    return-void
.end method
