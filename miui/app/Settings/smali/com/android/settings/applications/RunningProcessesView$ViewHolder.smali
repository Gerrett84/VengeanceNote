.class public Lcom/android/settings/applications/RunningProcessesView$ViewHolder;
.super Ljava/lang/Object;
.source "RunningProcessesView.java"


# instance fields
.field public icon:Landroid/widget/ImageView;

.field public oi:Landroid/view/View;

.field public oj:Landroid/widget/TextView;

.field public ok:Landroid/widget/TextView;

.field public ol:Landroid/widget/TextView;

.field public om:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 155
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->oi:Landroid/view/View;

    .line 157
    const v0, 0x7f080019

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 158
    const v0, 0x7f08006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->oj:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f08006d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->ok:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f080126

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->ol:Landroid/widget/TextView;

    .line 161
    const v0, 0x7f080011

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->om:Landroid/widget/TextView;

    .line 162
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 163
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 167
    iget-object v2, p1, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->oi:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 169
    iget-object v1, p2, Lcom/android/settings/applications/RunningState$BaseItem;->Ir:Landroid/content/pm/PackageItemInfo;

    if-nez v1, :cond_0

    instance-of v1, p2, Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz v1, :cond_0

    .line 172
    move-object v0, p2

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/settings/applications/RunningState$MergedItem;->PG:Lcom/android/settings/applications/RunningState$ProcessItem;

    invoke-virtual {v1, v3}, Lcom/android/settings/applications/RunningState$ProcessItem;->a(Landroid/content/pm/PackageManager;)V

    .line 173
    move-object v0, p2

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/settings/applications/RunningState$MergedItem;->PG:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState$BaseItem;->Ir:Landroid/content/pm/PackageItemInfo;

    iput-object v1, p2, Lcom/android/settings/applications/RunningState$BaseItem;->Ir:Landroid/content/pm/PackageItemInfo;

    .line 174
    move-object v0, p2

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/settings/applications/RunningState$MergedItem;->PG:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState$BaseItem;->Is:Ljava/lang/CharSequence;

    iput-object v1, p2, Lcom/android/settings/applications/RunningState$BaseItem;->Is:Ljava/lang/CharSequence;

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->oj:Landroid/widget/TextView;

    iget-object v4, p2, Lcom/android/settings/applications/RunningState$BaseItem;->Is:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    new-instance v1, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    invoke-direct {v1}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;-><init>()V

    .line 178
    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->oi:Landroid/view/View;

    iput-object v4, v1, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    .line 179
    iput-object p2, v1, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->gu:Lcom/android/settings/applications/RunningState$BaseItem;

    .line 180
    iput-object p0, v1, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->gv:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    .line 181
    iget-wide v4, p2, Lcom/android/settings/applications/RunningState$BaseItem;->cN:J

    iput-wide v4, v1, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->gw:J

    .line 182
    iget-boolean v4, p2, Lcom/android/settings/applications/RunningState$BaseItem;->Ix:Z

    if-eqz v4, :cond_2

    .line 183
    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->ok:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->oi:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b0406

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :goto_0
    const/4 v4, 0x0

    iput-object v4, p2, Lcom/android/settings/applications/RunningState$BaseItem;->Iv:Ljava/lang/String;

    .line 188
    iget-object v4, p2, Lcom/android/settings/applications/RunningState$BaseItem;->Ir:Landroid/content/pm/PackageItemInfo;

    if-eqz v4, :cond_1

    .line 189
    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v5, p2, Lcom/android/settings/applications/RunningState$BaseItem;->Ir:Landroid/content/pm/PackageItemInfo;

    invoke-virtual {v5, v3}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    :cond_1
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->oi:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, p3}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->a(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 193
    monitor-exit v2

    return-object v1

    .line 185
    :cond_2
    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->ok:Landroid/widget/TextView;

    iget-object v5, p2, Lcom/android/settings/applications/RunningState$BaseItem;->BU:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
