.class Lcom/android/settings/m;
.super Landroid/os/Handler;
.source "VirusScanAppActivity.java"


# instance fields
.field final synthetic aL:Lcom/android/settings/VirusScanAppActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/VirusScanAppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/settings/m;->aL:Lcom/android/settings/VirusScanAppActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 160
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 161
    const-string v1, "index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 162
    iget-object v1, p0, Lcom/android/settings/m;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v1, v1, Lcom/android/settings/VirusScanAppActivity;->OJ:Lcom/android/settings/N;

    invoke-virtual {v1}, Lcom/android/settings/N;->notifyDataSetChanged()V

    .line 163
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v3, v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/android/settings/m;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v1, v1, Lcom/android/settings/VirusScanAppActivity;->Oy:Landroid/widget/ListView;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 165
    iget-object v1, p0, Lcom/android/settings/m;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v1, v1, Lcom/android/settings/VirusScanAppActivity;->Oz:Landroid/widget/TextView;

    const-string v2, "%d%%"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x64

    iget-object v5, p0, Lcom/android/settings/m;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v5, v5, Lcom/android/settings/VirusScanAppActivity;->wr:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    div-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 178
    return-void

    .line 166
    :cond_1
    const/4 v1, 0x2

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_2

    .line 167
    iget-object v1, p0, Lcom/android/settings/m;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v1, v1, Lcom/android/settings/VirusScanAppActivity;->Oy:Landroid/widget/ListView;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 168
    :cond_2
    const/4 v0, 0x3

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_3

    .line 169
    iget-object v0, p0, Lcom/android/settings/m;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v1, p0, Lcom/android/settings/m;->aL:Lcom/android/settings/VirusScanAppActivity;

    invoke-static {v1}, Lcom/android/settings/VirusScanAppActivity;->b(Lcom/android/settings/VirusScanAppActivity;)Lcom/android/settings/dC;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/VirusScanAppActivity;->OG:Lcom/android/settings/dC;

    goto :goto_0

    .line 170
    :cond_3
    const/4 v0, 0x4

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/settings/m;->aL:Lcom/android/settings/VirusScanAppActivity;

    invoke-static {v0}, Lcom/android/settings/VirusScanAppActivity;->c(Lcom/android/settings/VirusScanAppActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/m;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v1, v1, Lcom/android/settings/VirusScanAppActivity;->wt:Lcom/android/settings/aV;

    invoke-virtual {v1}, Lcom/android/settings/aV;->em()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 172
    iget-object v0, p0, Lcom/android/settings/m;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->OE:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 174
    :cond_4
    iget-object v0, p0, Lcom/android/settings/m;->aL:Lcom/android/settings/VirusScanAppActivity;

    iget-object v0, v0, Lcom/android/settings/VirusScanAppActivity;->OG:Lcom/android/settings/dC;

    invoke-virtual {v0}, Lcom/android/settings/dC;->fq()V

    goto :goto_0
.end method
