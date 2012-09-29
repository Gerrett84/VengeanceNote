.class public final Lcom/android/settings/ct;
.super Ljava/lang/Object;
.source "ChooseLockSettingsHelper.java"


# instance fields
.field private Fn:Landroid/app/Fragment;

.field private mActivity:Landroid/app/Activity;

.field private qa:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/settings/ct;->mActivity:Landroid/app/Activity;

    .line 36
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ct;->qa:Lcom/android/internal/widget/LockPatternUtils;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/app/Fragment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/ct;-><init>(Landroid/app/Activity;)V

    .line 41
    iput-object p2, p0, Lcom/android/settings/ct;->Fn:Landroid/app/Fragment;

    .line 42
    return-void
.end method

.method private a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/ct;->qa:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ct;->qa:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    :cond_0
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    .line 83
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 85
    const-string v1, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 86
    const-string v1, "com.android.settings.ConfirmLockPattern.footer"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 87
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ConfirmLockPattern"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    iget-object v1, p0, Lcom/android/settings/ct;->Fn:Landroid/app/Fragment;

    if-eqz v1, :cond_2

    .line 89
    iget-object v1, p0, Lcom/android/settings/ct;->Fn:Landroid/app/Fragment;

    invoke-virtual {v1, v0, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 93
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 91
    :cond_2
    iget-object v1, p0, Lcom/android/settings/ct;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method private aF(I)Z
    .locals 3
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/ct;->qa:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 110
    :goto_0
    return v0

    .line 103
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 104
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ConfirmLockPassword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    iget-object v1, p0, Lcom/android/settings/ct;->Fn:Landroid/app/Fragment;

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/android/settings/ct;->Fn:Landroid/app/Fragment;

    invoke-virtual {v1, v0, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 110
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ct;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method


# virtual methods
.method launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    iget-object v1, p0, Lcom/android/settings/ct;->qa:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 69
    :goto_0
    return v0

    .line 59
    :sswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/ct;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    .line 66
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/settings/ct;->aF(I)Z

    move-result v0

    goto :goto_0

    .line 57
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method
