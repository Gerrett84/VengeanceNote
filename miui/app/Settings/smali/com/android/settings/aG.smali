.class Lcom/android/settings/aG;
.super Landroid/os/AsyncTask;
.source "DataUsageSummary.java"


# instance fields
.field private final gq:Lcom/android/settings/a/h;

.field private final ny:Lcom/android/settings/P;

.field private final nz:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/android/settings/a/h;Lcom/android/settings/P;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2120
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2121
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/a/h;

    iput-object v0, p0, Lcom/android/settings/aG;->gq:Lcom/android/settings/a/h;

    .line 2122
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/P;

    iput-object v0, p0, Lcom/android/settings/aG;->ny:Lcom/android/settings/P;

    .line 2123
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/settings/aG;->nz:Landroid/view/View;

    .line 2124
    return-void
.end method

.method private static a(Lcom/android/settings/a/c;Landroid/view/View;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2143
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2144
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2146
    if-eqz p0, :cond_0

    .line 2147
    iget-object v2, p0, Lcom/android/settings/a/c;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2148
    iget-object v0, p0, Lcom/android/settings/a/c;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2153
    :goto_0
    return-void

    .line 2150
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2151
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static a(Lcom/android/settings/a/h;Lcom/android/settings/P;Landroid/view/View;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2128
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/aG;

    .line 2129
    if-eqz v0, :cond_0

    .line 2130
    invoke-virtual {v0, v2}, Lcom/android/settings/aG;->cancel(Z)Z

    .line 2133
    :cond_0
    iget v0, p1, Lcom/android/settings/P;->dy:I

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/a/h;->f(IZ)Lcom/android/settings/a/c;

    move-result-object v0

    .line 2134
    if-eqz v0, :cond_1

    .line 2135
    invoke-static {v0, p2}, Lcom/android/settings/aG;->a(Lcom/android/settings/a/c;Landroid/view/View;)V

    .line 2140
    :goto_0
    return-void

    .line 2137
    :cond_1
    new-instance v0, Lcom/android/settings/aG;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/aG;-><init>(Lcom/android/settings/a/h;Lcom/android/settings/P;Landroid/view/View;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/aG;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/android/settings/a/c;
    .locals 3
    .parameter

    .prologue
    .line 2162
    iget-object v0, p0, Lcom/android/settings/aG;->gq:Lcom/android/settings/a/h;

    iget-object v1, p0, Lcom/android/settings/aG;->ny:Lcom/android/settings/P;

    iget v1, v1, Lcom/android/settings/P;->dy:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/a/h;->f(IZ)Lcom/android/settings/a/c;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/android/settings/a/c;)V
    .locals 1
    .parameter

    .prologue
    .line 2167
    iget-object v0, p0, Lcom/android/settings/aG;->nz:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/android/settings/aG;->a(Lcom/android/settings/a/c;Landroid/view/View;)V

    .line 2168
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2115
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/aG;->a([Ljava/lang/Void;)Lcom/android/settings/a/c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 2115
    check-cast p1, Lcom/android/settings/a/c;

    invoke-virtual {p0, p1}, Lcom/android/settings/aG;->a(Lcom/android/settings/a/c;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 2157
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/aG;->nz:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/settings/aG;->a(Lcom/android/settings/a/c;Landroid/view/View;)V

    .line 2158
    return-void
.end method
