.class Lcom/android/settings/s;
.super Ljava/lang/Object;
.source "VirusScanAppActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic aL:Lcom/android/settings/VirusScanAppActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/VirusScanAppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/settings/s;->aL:Lcom/android/settings/VirusScanAppActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/s;->aL:Lcom/android/settings/VirusScanAppActivity;

    check-cast p2, Lcom/android/settings/aV;

    iput-object p2, v0, Lcom/android/settings/VirusScanAppActivity;->wt:Lcom/android/settings/aV;

    .line 114
    iget-object v0, p0, Lcom/android/settings/s;->aL:Lcom/android/settings/VirusScanAppActivity;

    invoke-static {v0}, Lcom/android/settings/VirusScanAppActivity;->a(Lcom/android/settings/VirusScanAppActivity;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/s;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v1, p0, Lcom/android/settings/s;->aL:Lcom/android/settings/VirusScanAppActivity;

    invoke-static {v1}, Lcom/android/settings/VirusScanAppActivity;->b(Lcom/android/settings/VirusScanAppActivity;)Lcom/android/settings/dC;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/VirusScanAppActivity;->OG:Lcom/android/settings/dC;

    .line 118
    iget-object v0, p0, Lcom/android/settings/s;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->wt:Lcom/android/settings/aV;

    invoke-virtual {v0}, Lcom/android/settings/aV;->ej()V

    .line 119
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/s;->aL:Lcom/android/settings/VirusScanAppActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings/VirusScanAppActivity;->wt:Lcom/android/settings/aV;

    .line 124
    return-void
.end method
