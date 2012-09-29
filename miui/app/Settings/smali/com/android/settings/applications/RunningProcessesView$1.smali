.class Lcom/android/settings/applications/RunningProcessesView$1;
.super Ljava/lang/Object;
.source "RunningProcessesView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic df:Lcom/android/settings/applications/RunningProcessesView;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningProcessesView;)V
    .locals 0
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/settings/applications/RunningProcessesView$1;->df:Lcom/android/settings/applications/RunningProcessesView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$1;->df:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView;->ES:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->f(Z)V

    .line 419
    return-void
.end method
