.class Lcom/android/settings/cg;
.super Landroid/os/Handler;
.source "AccessibilityTutorialActivity.java"


# instance fields
.field private Bq:Z

.field final synthetic Br:Lcom/android/settings/br;


# direct methods
.method private constructor <init>(Lcom/android/settings/br;)V
    .locals 1
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/settings/cg;->Br:Lcom/android/settings/br;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/cg;->Bq:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/br;Lcom/android/settings/dx;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcom/android/settings/cg;-><init>(Lcom/android/settings/br;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 294
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 306
    :goto_0
    return-void

    .line 296
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/settings/cg;->Bq:Z

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/settings/cg;->Br:Lcom/android/settings/br;

    const v1, 0x7f0b05d5

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/cg;->Br:Lcom/android/settings/br;

    invoke-static {v3}, Lcom/android/settings/br;->b(Lcom/android/settings/br;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/br;->a(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/settings/cg;->Br:Lcom/android/settings/br;

    const v1, 0x7f0b05d6

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/cg;->Br:Lcom/android/settings/br;

    invoke-static {v3}, Lcom/android/settings/br;->b(Lcom/android/settings/br;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/br;->a(I[Ljava/lang/Object;)V

    .line 302
    iget-object v0, p0, Lcom/android/settings/cg;->Br:Lcom/android/settings/br;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Lcom/android/settings/br;->b(IZ)V

    goto :goto_0

    .line 294
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public he()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 284
    iput-boolean v3, p0, Lcom/android/settings/cg;->Bq:Z

    .line 285
    iget-object v0, p0, Lcom/android/settings/cg;->Br:Lcom/android/settings/br;

    invoke-static {v0}, Lcom/android/settings/br;->a(Lcom/android/settings/br;)Lcom/android/settings/cg;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings/cg;->sendEmptyMessageDelayed(IJ)Z

    .line 286
    return-void
.end method

.method public hf()V
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/cg;->Bq:Z

    .line 290
    return-void
.end method
