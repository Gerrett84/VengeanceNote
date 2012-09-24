.class Lcom/android/settings/applications/RunningProcessesView$2;
.super Ljava/lang/Object;
.source "RunningProcessesView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic dc:Lcom/android/settings/applications/RunningProcessesView;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningProcessesView;)V
    .locals 0
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/android/settings/applications/RunningProcessesView$2;->dc:Lcom/android/settings/applications/RunningProcessesView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$2;->dc:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView;->EO:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->f(Z)V

    .line 426
    return-void
.end method
