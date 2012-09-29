.class Lcom/android/settings/wifi/Z;
.super Ljava/util/TimerTask;
.source "WpsDialog.java"


# instance fields
.field final synthetic zP:Lcom/android/settings/wifi/WpsDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WpsDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/settings/wifi/Z;->zP:Lcom/android/settings/wifi/WpsDialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/settings/wifi/Z;->zP:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/WpsDialog;->c(Lcom/android/settings/wifi/WpsDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/J;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/J;-><init>(Lcom/android/settings/wifi/Z;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    return-void
.end method
