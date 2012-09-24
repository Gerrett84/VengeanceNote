.class public Lcom/android/settings/ConfirmAccessControl;
.super Lcom/android/settings/ConfirmLockPattern;
.source "ConfirmAccessControl.java"


# instance fields
.field private yL:Z

.field private yM:Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern;-><init>()V

    .line 88
    return-void
.end method

.method static synthetic a(Lcom/android/settings/ConfirmAccessControl;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/settings/ConfirmAccessControl;->yL:Z

    return p1
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/ConfirmLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 71
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 73
    return-object v0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    check-cast p1, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

    iput-object p1, p0, Lcom/android/settings/ConfirmAccessControl;->yM:Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

    .line 79
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/settings/ConfirmAccessControl;->yL:Z

    if-nez v0, :cond_0

    .line 56
    invoke-super {p0}, Lcom/android/settings/ConfirmLockPattern;->onBackPressed()V

    .line 58
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/android/settings/ConfirmLockPattern;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/ConfirmAccessControl;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    const/16 v1, 0x8

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 46
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/ConfirmLockPattern;->onNewIntent(Landroid/content/Intent;)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/ConfirmAccessControl;->yM:Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

    invoke-virtual {v0, p1}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->a(Landroid/content/Intent;)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/ConfirmAccessControl;->yM:Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

    sget-object v1, Lcom/android/settings/ConfirmLockPattern$Stage;->HS:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->a(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    .line 86
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lcom/android/settings/ConfirmLockPattern;->onStop()V

    .line 63
    iget-boolean v0, p0, Lcom/android/settings/ConfirmAccessControl;->yL:Z

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/ConfirmAccessControl;->finish()V

    .line 66
    :cond_0
    return-void
.end method
