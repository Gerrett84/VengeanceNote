.class Lcom/android/settings/aB;
.super Landroid/os/Handler;
.source "AccessibilityTutorialActivity.java"


# instance fields
.field final synthetic nC:Lcom/android/settings/bF;


# direct methods
.method private constructor <init>(Lcom/android/settings/bF;)V
    .locals 0
    .parameter

    .prologue
    .line 671
    iput-object p1, p0, Lcom/android/settings/aB;->nC:Lcom/android/settings/bF;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bF;Lcom/android/settings/dx;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 671
    invoke-direct {p0, p1}, Lcom/android/settings/aB;-><init>(Lcom/android/settings/bF;)V

    return-void
.end method


# virtual methods
.method public E(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 685
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/aB;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 686
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 676
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 682
    :goto_0
    return-void

    .line 678
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 679
    iget-object v1, p0, Lcom/android/settings/aB;->nC:Lcom/android/settings/bF;

    invoke-static {v1, v0}, Lcom/android/settings/bF;->a(Lcom/android/settings/bF;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 676
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
