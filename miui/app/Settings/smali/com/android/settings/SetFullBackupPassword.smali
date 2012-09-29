.class public Lcom/android/settings/SetFullBackupPassword;
.super Lcom/android/settings/J;
.source "SetFullBackupPassword.java"


# instance fields
.field Ei:Landroid/widget/TextView;

.field Ej:Landroid/widget/TextView;

.field Ek:Landroid/widget/TextView;

.field El:Landroid/widget/Button;

.field Em:Landroid/widget/Button;

.field En:Landroid/view/View$OnClickListener;

.field cn:Landroid/app/backup/IBackupManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/J;-><init>()V

    .line 41
    new-instance v0, Lcom/android/settings/Z;

    invoke-direct {v0, p0}, Lcom/android/settings/Z;-><init>(Lcom/android/settings/SetFullBackupPassword;)V

    iput-object v0, p0, Lcom/android/settings/SetFullBackupPassword;->En:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/SetFullBackupPassword;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/SetFullBackupPassword;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SetFullBackupPassword;->cn:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1, p2}, Landroid/app/backup/IBackupManager;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 106
    :goto_0
    return v0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    const-string v0, "SetFullBackupPassword"

    const-string v1, "Unable to communicate with backup manager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/J;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SetFullBackupPassword;->cn:Landroid/app/backup/IBackupManager;

    .line 88
    const v0, 0x7f040070

    invoke-virtual {p0, v0}, Lcom/android/settings/SetFullBackupPassword;->setContentView(I)V

    .line 90
    const v0, 0x7f08012e

    invoke-virtual {p0, v0}, Lcom/android/settings/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SetFullBackupPassword;->Ei:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f080130

    invoke-virtual {p0, v0}, Lcom/android/settings/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SetFullBackupPassword;->Ej:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f080132

    invoke-virtual {p0, v0}, Lcom/android/settings/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SetFullBackupPassword;->Ek:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f080133

    invoke-virtual {p0, v0}, Lcom/android/settings/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/SetFullBackupPassword;->El:Landroid/widget/Button;

    .line 95
    const v0, 0x7f080134

    invoke-virtual {p0, v0}, Lcom/android/settings/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/SetFullBackupPassword;->Em:Landroid/widget/Button;

    .line 97
    iget-object v0, p0, Lcom/android/settings/SetFullBackupPassword;->El:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/SetFullBackupPassword;->En:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/android/settings/SetFullBackupPassword;->Em:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/SetFullBackupPassword;->En:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void
.end method
