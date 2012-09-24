.class Lcom/android/settings/wifi/f;
.super Ljava/lang/Thread;
.source "WifiStatusTest.java"


# instance fields
.field final synthetic aV:Lcom/android/settings/wifi/WifiStatusTest;

.field final synthetic aW:Landroid/os/Handler;

.field final synthetic aX:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiStatusTest;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/settings/wifi/f;->aV:Lcom/android/settings/wifi/WifiStatusTest;

    iput-object p2, p0, Lcom/android/settings/wifi/f;->aW:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/settings/wifi/f;->aX:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/settings/wifi/f;->aV:Lcom/android/settings/wifi/WifiStatusTest;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiStatusTest;->r(Lcom/android/settings/wifi/WifiStatusTest;)V

    .line 330
    iget-object v0, p0, Lcom/android/settings/wifi/f;->aW:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wifi/f;->aX:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 331
    return-void
.end method
