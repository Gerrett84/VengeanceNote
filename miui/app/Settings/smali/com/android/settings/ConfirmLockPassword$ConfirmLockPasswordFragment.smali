.class public Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;
.super Landroid/app/Fragment;
.source "ConfirmLockPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private qa:Lcom/android/internal/widget/LockPatternUtils;

.field private rb:Landroid/widget/TextView;

.field private sU:Landroid/widget/TextView;

.field private sV:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private sW:Lcom/android/internal/widget/PasswordEntryKeyboardView;

.field private sX:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->rb:Landroid/widget/TextView;

    return-object v0
.end method

.method private ae(I)V
    .locals 4
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->rb:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 183
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->sU:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/K;

    invoke-direct {v1, p0}, Lcom/android/settings/K;-><init>(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 189
    return-void
.end method

.method private fv()V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->sU:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->qa:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 158
    const-string v2, "password"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    const v0, 0x7f0b0382

    invoke-direct {p0, v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->ae(I)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter

    .prologue
    .line 211
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->sX:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->sU:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 212
    return-void

    .line 211
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 205
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 179
    :goto_0
    return-void

    .line 171
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->fv()V

    goto :goto_0

    .line 175
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x7f080024
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->qa:Lcom/android/internal/widget/LockPatternUtils;

    .line 89
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x7f0b0376

    const v4, 0x7f0b0374

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->qa:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    .line 96
    const v0, 0x7f040016

    const/4 v6, 0x0

    invoke-virtual {p1, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 99
    const v0, 0x7f080024

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v0, 0x7f080025

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->sX:Landroid/widget/Button;

    .line 101
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->sX:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->sX:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 104
    const v0, 0x7f08001d

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->sU:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->sU:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->sU:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 108
    const v0, 0x7f08001e

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->sW:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    .line 109
    const v0, 0x7f08001b

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->rb:Landroid/widget/TextView;

    .line 110
    const/high16 v0, 0x4

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x5

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x6

    if-ne v0, v1, :cond_2

    :cond_0
    move v1, v3

    .line 113
    :goto_0
    iget-object v7, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->rb:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    move v0, v4

    :goto_1
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(I)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 117
    new-instance v7, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v8, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->sW:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iget-object v9, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->sU:Landroid/widget/TextView;

    invoke-direct {v7, v0, v8, v9}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v7, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->sV:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 119
    iget-object v7, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->sV:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    if-eqz v1, :cond_4

    :goto_2
    invoke-virtual {v7, v2}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 122
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->sW:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v2}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 124
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->sU:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    .line 125
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->sU:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 129
    instance-of v2, v0, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_1

    .line 130
    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 131
    if-eqz v1, :cond_6

    .line 133
    :goto_4
    invoke-virtual {p0, v4}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 134
    invoke-virtual {v0, v1, v1}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 137
    :cond_1
    return-object v6

    :cond_2
    move v1, v2

    .line 110
    goto :goto_0

    :cond_3
    move v0, v5

    .line 113
    goto :goto_1

    :cond_4
    move v2, v3

    .line 119
    goto :goto_2

    .line 125
    :cond_5
    const/16 v2, 0x12

    goto :goto_3

    :cond_6
    move v4, v5

    .line 131
    goto :goto_4
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->fv()V

    .line 198
    const/4 v0, 0x1

    .line 200
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 143
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->sW:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 144
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 150
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->sW:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 151
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    return-void
.end method
