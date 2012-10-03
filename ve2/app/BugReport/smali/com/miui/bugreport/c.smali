.class Lcom/miui/bugreport/c;
.super Ljava/lang/Object;
.source "BugReportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Lcom/miui/bugreport/g;


# direct methods
.method constructor <init>(Lcom/miui/bugreport/g;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/miui/bugreport/c;->d:Lcom/miui/bugreport/g;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/miui/bugreport/c;->d:Lcom/miui/bugreport/g;

    iget-object v0, v0, Lcom/miui/bugreport/g;->q:Lcom/miui/bugreport/BugReportActivity;

    invoke-static {v0}, Lcom/miui/bugreport/BugReportActivity;->c(Lcom/miui/bugreport/BugReportActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/bugreport/c;->d:Lcom/miui/bugreport/g;

    iget-object v0, v0, Lcom/miui/bugreport/g;->q:Lcom/miui/bugreport/BugReportActivity;

    invoke-static {v0}, Lcom/miui/bugreport/BugReportActivity;->b(Lcom/miui/bugreport/BugReportActivity;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 172
    return-void

    .line 171
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
