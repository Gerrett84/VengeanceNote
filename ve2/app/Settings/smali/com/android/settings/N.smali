.class Lcom/android/settings/N;
.super Ljava/lang/Object;
.source "SetFullBackupPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic eA:Lcom/android/settings/SetFullBackupPassword;


# direct methods
.method constructor <init>(Lcom/android/settings/SetFullBackupPassword;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/settings/N;->eA:Lcom/android/settings/SetFullBackupPassword;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 44
    iget-object v0, p0, Lcom/android/settings/N;->eA:Lcom/android/settings/SetFullBackupPassword;

    iget-object v0, v0, Lcom/android/settings/SetFullBackupPassword;->Aq:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 45
    iget-object v0, p0, Lcom/android/settings/N;->eA:Lcom/android/settings/SetFullBackupPassword;

    iget-object v0, v0, Lcom/android/settings/SetFullBackupPassword;->Am:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/android/settings/N;->eA:Lcom/android/settings/SetFullBackupPassword;

    iget-object v1, v1, Lcom/android/settings/SetFullBackupPassword;->An:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    iget-object v2, p0, Lcom/android/settings/N;->eA:Lcom/android/settings/SetFullBackupPassword;

    iget-object v2, v2, Lcom/android/settings/SetFullBackupPassword;->Ao:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    const-string v0, "SetFullBackupPassword"

    const-string v1, "password mismatch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/android/settings/N;->eA:Lcom/android/settings/SetFullBackupPassword;

    const-string v1, "!!! New password and confirmation don\'t match !!!"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 79
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/android/settings/N;->eA:Lcom/android/settings/SetFullBackupPassword;

    invoke-static {v2, v0, v1}, Lcom/android/settings/SetFullBackupPassword;->a(Lcom/android/settings/SetFullBackupPassword;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    const-string v0, "SetFullBackupPassword"

    const-string v1, "password set successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/android/settings/N;->eA:Lcom/android/settings/SetFullBackupPassword;

    const-string v1, "!!! New backup password set !!!"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 66
    iget-object v0, p0, Lcom/android/settings/N;->eA:Lcom/android/settings/SetFullBackupPassword;

    invoke-virtual {v0}, Lcom/android/settings/SetFullBackupPassword;->finish()V

    goto :goto_0

    .line 69
    :cond_1
    const-string v0, "SetFullBackupPassword"

    const-string v1, "failure; password mismatch?"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/android/settings/N;->eA:Lcom/android/settings/SetFullBackupPassword;

    const-string v1, "!!! Failure setting backup password !!!"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/android/settings/N;->eA:Lcom/android/settings/SetFullBackupPassword;

    iget-object v0, v0, Lcom/android/settings/SetFullBackupPassword;->Ap:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 75
    iget-object v0, p0, Lcom/android/settings/N;->eA:Lcom/android/settings/SetFullBackupPassword;

    invoke-virtual {v0}, Lcom/android/settings/SetFullBackupPassword;->finish()V

    goto :goto_0

    .line 77
    :cond_3
    const-string v0, "SetFullBackupPassword"

    const-string v1, "Click on unknown view"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
