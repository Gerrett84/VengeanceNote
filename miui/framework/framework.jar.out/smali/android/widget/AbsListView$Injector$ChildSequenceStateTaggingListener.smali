.class Landroid/widget/AbsListView$Injector$ChildSequenceStateTaggingListener;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Landroid/view/ViewGroup$ChildSequenceStateTaggingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView$Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChildSequenceStateTaggingListener"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaggingFirstChildSequenceState(Landroid/view/ViewGroup;Landroid/view/View;)Z
    .locals 1
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 134
    check-cast p1, Landroid/widget/AbsListView;

    .end local p1
    iget v0, p1, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTaggingLastChildSequenceState(Landroid/view/ViewGroup;Landroid/view/View;)Z
    .locals 3
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 139
    move-object v0, p1

    check-cast v0, Landroid/widget/AbsListView;

    .line 140
    .local v0, list:Landroid/widget/AbsListView;
    iget v1, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
