.class Lcom/android/settings/x;
.super Ljava/lang/Thread;
.source "RadioInfo.java"


# instance fields
.field final synthetic aW:Landroid/os/Handler;

.field final synthetic aX:Ljava/lang/Runnable;

.field final synthetic aY:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 754
    iput-object p1, p0, Lcom/android/settings/x;->aY:Lcom/android/settings/RadioInfo;

    iput-object p2, p0, Lcom/android/settings/x;->aW:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/settings/x;->aX:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/settings/x;->aY:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->y(Lcom/android/settings/RadioInfo;)V

    .line 758
    iget-object v0, p0, Lcom/android/settings/x;->aW:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/x;->aX:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 759
    return-void
.end method
