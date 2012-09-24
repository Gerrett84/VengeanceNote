.class Lcom/miui/bugreport/f;
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
    .line 206
    iput-object p1, p0, Lcom/miui/bugreport/f;->q:Lcom/miui/bugreport/BugReportActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/miui/bugreport/f;->q:Lcom/miui/bugreport/BugReportActivity;

    invoke-static {}, Lcom/miui/bugreport/d;->d()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/bugreport/BugReportActivity;->b(Lcom/miui/bugreport/BugReportActivity;Ljava/io/File;)Ljava/io/File;

    .line 211
    iget-object v0, p0, Lcom/miui/bugreport/f;->q:Lcom/miui/bugreport/BugReportActivity;

    invoke-static {v0}, Lcom/miui/bugreport/BugReportActivity;->a(Lcom/miui/bugreport/BugReportActivity;)Lcom/miui/bugreport/UserFeedbackReport;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/bugreport/f;->q:Lcom/miui/bugreport/BugReportActivity;

    invoke-static {v1}, Lcom/miui/bugreport/BugReportActivity;->d(Lcom/miui/bugreport/BugReportActivity;)Ljava/io/File;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/bugreport/UserFeedbackReport;->bugreport:Ljava/io/File;

    .line 212
    iget-object v0, p0, Lcom/miui/bugreport/f;->q:Lcom/miui/bugreport/BugReportActivity;

    invoke-static {v0}, Lcom/miui/bugreport/BugReportActivity;->e(Lcom/miui/bugreport/BugReportActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Lcom/miui/bugreport/k;

    invoke-direct {v1, p0}, Lcom/miui/bugreport/k;-><init>(Lcom/miui/bugreport/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->post(Ljava/lang/Runnable;)Z

    .line 219
    return-void
.end method
