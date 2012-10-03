.class Lcom/miui/bugreport/h;
.super Ljava/lang/Object;
.source "BugReportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic q:Lcom/miui/bugreport/BugReportActivity;


# direct methods
.method constructor <init>(Lcom/miui/bugreport/BugReportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/miui/bugreport/h;->q:Lcom/miui/bugreport/BugReportActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/miui/bugreport/h;->q:Lcom/miui/bugreport/BugReportActivity;

    invoke-static {v0}, Lcom/miui/bugreport/BugReportActivity;->f(Lcom/miui/bugreport/BugReportActivity;)Lcom/miui/bugreport/c;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/bugreport/h;->q:Lcom/miui/bugreport/BugReportActivity;

    iget-object v2, p0, Lcom/miui/bugreport/h;->q:Lcom/miui/bugreport/BugReportActivity;

    invoke-static {v2}, Lcom/miui/bugreport/BugReportActivity;->a(Lcom/miui/bugreport/BugReportActivity;)Lcom/miui/bugreport/UserFeedbackReport;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/bugreport/c;->e(Landroid/content/Context;Lcom/miui/bugreport/UserFeedbackReport;)Landroid/content/Intent;

    move-result-object v0

    .line 303
    iget-object v1, p0, Lcom/miui/bugreport/h;->q:Lcom/miui/bugreport/BugReportActivity;

    invoke-virtual {v1, v0}, Lcom/miui/bugreport/BugReportActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    iget-object v0, p0, Lcom/miui/bugreport/h;->q:Lcom/miui/bugreport/BugReportActivity;

    invoke-virtual {v0}, Lcom/miui/bugreport/BugReportActivity;->finish()V

    .line 307
    return-void

    .line 304
    :catch_0
    move-exception v0

    goto :goto_0
.end method
