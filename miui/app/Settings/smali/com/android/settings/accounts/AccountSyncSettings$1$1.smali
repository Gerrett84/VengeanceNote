.class Lcom/android/settings/accounts/AccountSyncSettings$1$1;
.super Ljava/lang/Object;
.source "AccountSyncSettings.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field final synthetic uH:Lcom/android/settings/accounts/AccountSyncSettings$1;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountSyncSettings$1;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings$1$1;->uH:Lcom/android/settings/accounts/AccountSyncSettings$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 102
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$1$1;->uH:Lcom/android/settings/accounts/AccountSyncSettings$1;

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings$1;->va:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AccountSyncSettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 107
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v1, :cond_2

    .line 108
    const/4 v0, 0x0

    :goto_1
    move v1, v0

    .line 117
    :goto_2
    if-eqz v1, :cond_1

    .line 118
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$1$1;->uH:Lcom/android/settings/accounts/AccountSyncSettings$1;

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings$1;->va:Lcom/android/settings/accounts/AccountSyncSettings;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->a(Lcom/android/settings/accounts/AccountSyncSettings;I)V

    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$1$1;->uH:Lcom/android/settings/accounts/AccountSyncSettings$1;

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings$1;->va:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AccountSyncSettings;->finish()V

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    goto :goto_2

    .line 112
    :catch_1
    move-exception v0

    goto :goto_2

    .line 110
    :catch_2
    move-exception v0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method
