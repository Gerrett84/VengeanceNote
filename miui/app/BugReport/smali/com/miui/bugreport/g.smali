.class Lcom/miui/bugreport/g;
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
    .line 162
    iput-object p1, p0, Lcom/miui/bugreport/g;->q:Lcom/miui/bugreport/BugReportActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/miui/bugreport/g;->q:Lcom/miui/bugreport/BugReportActivity;

    invoke-static {}, Lcom/miui/bugreport/d;->c()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/bugreport/BugReportActivity;->a(Lcom/miui/bugreport/BugReportActivity;Ljava/io/File;)Ljava/io/File;

    .line 166
    iget-object v0, p0, Lcom/miui/bugreport/g;->q:Lcom/miui/bugreport/BugReportActivity;

    invoke-static {v0}, Lcom/miui/bugreport/BugReportActivity;->a(Lcom/miui/bugreport/BugReportActivity;)Lcom/miui/bugreport/UserFeedbackReport;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/bugreport/g;->q:Lcom/miui/bugreport/BugReportActivity;

    invoke-static {v1}, Lcom/miui/bugreport/BugReportActivity;->b(Lcom/miui/bugreport/BugReportActivity;)Ljava/io/File;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/bugreport/UserFeedbackReport;->systemLog:Ljava/io/File;

    .line 167
    iget-object v0, p0, Lcom/miui/bugreport/g;->q:Lcom/miui/bugreport/BugReportActivity;

    invoke-static {v0}, Lcom/miui/bugreport/BugReportActivity;->c(Lcom/miui/bugreport/BugReportActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    new-instance v1, Lcom/miui/bugreport/b;

    invoke-direct {v1, p0}, Lcom/miui/bugreport/b;-><init>(Lcom/miui/bugreport/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->post(Ljava/lang/Runnable;)Z

    .line 174
    return-void
.end method
