.class Lcom/android/settings/r;
.super Landroid/os/Handler;
.source "RadioInfo.java"


# instance fields
.field final synthetic aX:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/settings/r;->aX:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 181
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 183
    :sswitch_0
    iget-object v0, p0, Lcom/android/settings/r;->aX:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->h(Lcom/android/settings/RadioInfo;)V

    goto :goto_0

    .line 187
    :sswitch_1
    iget-object v0, p0, Lcom/android/settings/r;->aX:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->i(Lcom/android/settings/RadioInfo;)V

    goto :goto_0

    .line 191
    :sswitch_2
    iget-object v0, p0, Lcom/android/settings/r;->aX:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->j(Lcom/android/settings/RadioInfo;)V

    .line 192
    iget-object v0, p0, Lcom/android/settings/r;->aX:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->k(Lcom/android/settings/RadioInfo;)V

    goto :goto_0

    .line 196
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 197
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 198
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 199
    iget-object v1, p0, Lcom/android/settings/r;->aX:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->l(Lcom/android/settings/RadioInfo;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/android/settings/r;->aX:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->l(Lcom/android/settings/RadioInfo;)Landroid/widget/Spinner;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 205
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 206
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/settings/r;->aX:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->m(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {p0, v1}, Lcom/android/settings/r;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0

    .line 212
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 213
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 214
    iget-object v1, p0, Lcom/android/settings/r;->aX:Lcom/android/settings/RadioInfo;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/android/settings/RadioInfo;->a(Lcom/android/settings/RadioInfo;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/android/settings/r;->aX:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->n(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 220
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 221
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    .line 222
    iget-object v0, p0, Lcom/android/settings/r;->aX:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->o(Lcom/android/settings/RadioInfo;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "refresh error"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 224
    :cond_3
    iget-object v1, p0, Lcom/android/settings/r;->aX:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->o(Lcom/android/settings/RadioInfo;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 228
    :sswitch_7
    iget-object v0, p0, Lcom/android/settings/r;->aX:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->p(Lcom/android/settings/RadioInfo;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 229
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 230
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/settings/r;->aX:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->o(Lcom/android/settings/RadioInfo;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "update error"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 181
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
        0x3e8 -> :sswitch_3
        0x3e9 -> :sswitch_4
        0x3ea -> :sswitch_5
        0x3ed -> :sswitch_6
        0x3ee -> :sswitch_7
    .end sparse-switch
.end method
