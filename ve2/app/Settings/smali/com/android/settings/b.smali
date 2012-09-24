.class Lcom/android/settings/b;
.super Ljava/lang/Object;
.source "DebugIntentSender.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic ar:Lcom/android/settings/DebugIntentSender;


# direct methods
.method constructor <init>(Lcom/android/settings/DebugIntentSender;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/settings/b;->ar:Lcom/android/settings/DebugIntentSender;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/b;->ar:Lcom/android/settings/DebugIntentSender;

    invoke-static {v0}, Lcom/android/settings/DebugIntentSender;->a(Lcom/android/settings/DebugIntentSender;)Landroid/widget/Button;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/b;->ar:Lcom/android/settings/DebugIntentSender;

    invoke-static {v0}, Lcom/android/settings/DebugIntentSender;->b(Lcom/android/settings/DebugIntentSender;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/settings/b;->ar:Lcom/android/settings/DebugIntentSender;

    invoke-static {v0}, Lcom/android/settings/DebugIntentSender;->c(Lcom/android/settings/DebugIntentSender;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/android/settings/b;->ar:Lcom/android/settings/DebugIntentSender;

    invoke-static {v1}, Lcom/android/settings/DebugIntentSender;->d(Lcom/android/settings/DebugIntentSender;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    iget-object v2, p0, Lcom/android/settings/b;->ar:Lcom/android/settings/DebugIntentSender;

    invoke-static {v2}, Lcom/android/settings/DebugIntentSender;->e(Lcom/android/settings/DebugIntentSender;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 47
    iget-object v3, p0, Lcom/android/settings/b;->ar:Lcom/android/settings/DebugIntentSender;

    invoke-static {v3}, Lcom/android/settings/DebugIntentSender;->f(Lcom/android/settings/DebugIntentSender;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 49
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 53
    :cond_1
    const-string v0, "account"

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v0, "resource"

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    iget-object v0, p0, Lcom/android/settings/b;->ar:Lcom/android/settings/DebugIntentSender;

    invoke-static {v0}, Lcom/android/settings/DebugIntentSender;->a(Lcom/android/settings/DebugIntentSender;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 56
    iget-object v0, p0, Lcom/android/settings/b;->ar:Lcom/android/settings/DebugIntentSender;

    invoke-virtual {v0, v4}, Lcom/android/settings/DebugIntentSender;->sendBroadcast(Landroid/content/Intent;)V

    .line 61
    :goto_0
    iget-object v0, p0, Lcom/android/settings/b;->ar:Lcom/android/settings/DebugIntentSender;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/DebugIntentSender;->setResult(I)V

    .line 62
    iget-object v0, p0, Lcom/android/settings/b;->ar:Lcom/android/settings/DebugIntentSender;

    invoke-virtual {v0}, Lcom/android/settings/DebugIntentSender;->finish()V

    .line 64
    :cond_2
    return-void

    .line 58
    :cond_3
    iget-object v0, p0, Lcom/android/settings/b;->ar:Lcom/android/settings/DebugIntentSender;

    invoke-virtual {v0, v4}, Lcom/android/settings/DebugIntentSender;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
