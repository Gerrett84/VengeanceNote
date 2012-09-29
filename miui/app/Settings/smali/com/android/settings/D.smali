.class Lcom/android/settings/D;
.super Ljava/lang/Thread;
.source "RadioInfo.java"


# instance fields
.field final synthetic aZ:Landroid/os/Handler;

.field final synthetic ba:Ljava/lang/Runnable;

.field final synthetic bb:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 736
    iput-object p1, p0, Lcom/android/settings/D;->bb:Lcom/android/settings/RadioInfo;

    iput-object p2, p0, Lcom/android/settings/D;->aZ:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/settings/D;->ba:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 739
    iget-object v0, p0, Lcom/android/settings/D;->bb:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->w(Lcom/android/settings/RadioInfo;)V

    .line 740
    iget-object v0, p0, Lcom/android/settings/D;->aZ:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/D;->ba:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 741
    return-void
.end method
