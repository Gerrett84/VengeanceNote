.class Lcom/android/settings/applications/ApplicationsState$MainHandler;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# instance fields
.field final synthetic iG:Lcom/android/settings/applications/ApplicationsState;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ApplicationsState;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->iG:Lcom/android/settings/applications/ApplicationsState;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 342
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->iG:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState;->jL()V

    .line 343
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 345
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$Session;

    .line 346
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->iG:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState;->Hf:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState$Session;->rD:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$Session;->rK:Ljava/util/ArrayList;

    invoke-interface {v1, v0}, Lcom/android/settings/applications/ApplicationsState$Callbacks;->b(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 351
    :goto_1
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->iG:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Hf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->iG:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Hf:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$Session;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$Session;->rD:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    invoke-interface {v0}, Lcom/android/settings/applications/ApplicationsState$Callbacks;->ah()V

    .line 351
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 356
    :goto_2
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->iG:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Hf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->iG:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Hf:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$Session;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$Session;->rD:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    invoke-interface {v0}, Lcom/android/settings/applications/ApplicationsState$Callbacks;->ai()V

    .line 356
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 361
    :goto_3
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->iG:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Hf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->iG:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Hf:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$Session;

    iget-object v2, v0, Lcom/android/settings/applications/ApplicationsState$Session;->rD:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Lcom/android/settings/applications/ApplicationsState$Callbacks;->k(Ljava/lang/String;)V

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 367
    :goto_4
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->iG:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Hf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->iG:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Hf:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$Session;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$Session;->rD:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    invoke-interface {v0}, Lcom/android/settings/applications/ApplicationsState$Callbacks;->aj()V

    .line 367
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :pswitch_5
    move v2, v1

    .line 372
    :goto_5
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->iG:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Hf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$MainHandler;->iG:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->Hf:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$Session;

    iget-object v3, v0, Lcom/android/settings/applications/ApplicationsState$Session;->rD:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_6
    invoke-interface {v3, v0}, Lcom/android/settings/applications/ApplicationsState$Callbacks;->j(Z)V

    .line 372
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_1
    move v0, v1

    .line 373
    goto :goto_6

    .line 343
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
