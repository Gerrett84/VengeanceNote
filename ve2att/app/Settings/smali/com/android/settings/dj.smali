.class Lcom/android/settings/dj;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# instance fields
.field final synthetic FG:Lcom/android/settings/CryptKeeper;


# direct methods
.method private constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/settings/dj;->FG:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/dI;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/settings/dj;-><init>(Lcom/android/settings/CryptKeeper;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings/dj;->FG:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->a(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 151
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p1, v1

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->decryptStorage(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 154
    :goto_0
    return-object v0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    const-string v1, "CryptKeeper"

    const-string v2, "Error while decrypting..."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 146
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/dj;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter

    .prologue
    const/16 v1, 0x1e

    .line 160
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/dj;->FG:Lcom/android/settings/CryptKeeper;

    const-class v2, Lcom/android/settings/CryptKeeper$FadeToBlack;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    iget-object v1, p0, Lcom/android/settings/dj;->FG:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v1}, Lcom/android/settings/CryptKeeper;->finish()V

    .line 167
    iget-object v1, p0, Lcom/android/settings/dj;->FG:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v1, v0}, Lcom/android/settings/CryptKeeper;->startActivity(Landroid/content/Intent;)V

    .line 180
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 170
    iget-object v0, p0, Lcom/android/settings/dj;->FG:Lcom/android/settings/CryptKeeper;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/CryptKeeper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/android/settings/dj;->FG:Lcom/android/settings/CryptKeeper;

    invoke-static {v0, v1}, Lcom/android/settings/CryptKeeper;->a(Lcom/android/settings/CryptKeeper;I)I

    .line 173
    iget-object v0, p0, Lcom/android/settings/dj;->FG:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->b(Lcom/android/settings/CryptKeeper;)V

    goto :goto_0

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/android/settings/dj;->FG:Lcom/android/settings/CryptKeeper;

    const v1, 0x7f080009

    invoke-virtual {v0, v1}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 176
    const v1, 0x7f0b05a5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/dj;->FG:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->c(Lcom/android/settings/CryptKeeper;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/dj;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
