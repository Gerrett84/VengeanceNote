.class Lcom/android/settings/accounts/AddAccountSettings$1;
.super Ljava/lang/Object;
.source "AddAccountSettings.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field final synthetic sk:Lcom/android/settings/accounts/AddAccountSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AddAccountSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->sk:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 4
    .parameter

    .prologue
    .line 78
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 79
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 80
    iget-object v1, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->sk:Lcom/android/settings/accounts/AddAccountSettings;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/accounts/AddAccountSettings;->setResult(I)V

    .line 82
    iget-object v1, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->sk:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-static {v1}, Lcom/android/settings/accounts/AddAccountSettings;->a(Lcom/android/settings/accounts/AddAccountSettings;)Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->sk:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-static {v1}, Lcom/android/settings/accounts/AddAccountSettings;->a(Lcom/android/settings/accounts/AddAccountSettings;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 86
    :cond_0
    const-string v1, "AccountSettings"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account added: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->sk:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AddAccountSettings;->finish()V

    .line 96
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    :try_start_1
    const-string v0, "AccountSettings"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "AccountSettings"

    const-string v1, "addAccount was canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->sk:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AddAccountSettings;->finish()V

    goto :goto_0

    .line 89
    :catch_1
    move-exception v0

    .line 90
    :try_start_2
    const-string v1, "AccountSettings"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAccount failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->sk:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AddAccountSettings;->finish()V

    goto :goto_0

    .line 91
    :catch_2
    move-exception v0

    .line 92
    :try_start_3
    const-string v1, "AccountSettings"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAccount failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    :cond_4
    iget-object v0, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->sk:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-virtual {v0}, Lcom/android/settings/accounts/AddAccountSettings;->finish()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/settings/accounts/AddAccountSettings$1;->sk:Lcom/android/settings/accounts/AddAccountSettings;

    invoke-virtual {v1}, Lcom/android/settings/accounts/AddAccountSettings;->finish()V

    throw v0
.end method
