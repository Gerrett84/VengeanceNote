.class Lcom/miui/bugreport/a;
.super Ljava/lang/Object;
.source "PreviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/miui/bugreport/PreviewActivity;


# direct methods
.method constructor <init>(Lcom/miui/bugreport/PreviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/miui/bugreport/a;->a:Lcom/miui/bugreport/PreviewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 59
    :try_start_0
    new-instance v0, Lcom/miui/bugreport/c;

    invoke-direct {v0}, Lcom/miui/bugreport/c;-><init>()V

    .line 60
    iget-object v1, p0, Lcom/miui/bugreport/a;->a:Lcom/miui/bugreport/PreviewActivity;

    iget-object v2, p0, Lcom/miui/bugreport/a;->a:Lcom/miui/bugreport/PreviewActivity;

    invoke-static {v2}, Lcom/miui/bugreport/PreviewActivity;->a(Lcom/miui/bugreport/PreviewActivity;)Lcom/miui/bugreport/UserFeedbackReport;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/bugreport/c;->e(Landroid/content/Context;Lcom/miui/bugreport/UserFeedbackReport;)Landroid/content/Intent;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/miui/bugreport/a;->a:Lcom/miui/bugreport/PreviewActivity;

    invoke-virtual {v1, v0}, Lcom/miui/bugreport/PreviewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/miui/bugreport/a;->a:Lcom/miui/bugreport/PreviewActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/miui/bugreport/PreviewActivity;->setResult(I)V

    .line 66
    iget-object v0, p0, Lcom/miui/bugreport/a;->a:Lcom/miui/bugreport/PreviewActivity;

    invoke-virtual {v0}, Lcom/miui/bugreport/PreviewActivity;->finish()V

    .line 67
    return-void

    .line 63
    :catch_0
    move-exception v0

    goto :goto_0
.end method
