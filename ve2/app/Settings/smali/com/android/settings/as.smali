.class Lcom/android/settings/as;
.super Landroid/os/AsyncTask;
.source "DataUsageSummary.java"


# instance fields
.field private final ft:Lcom/android/settings/a/f;

.field private final lV:Lcom/android/settings/bC;

.field private final lW:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/android/settings/a/f;Lcom/android/settings/bC;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1992
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1993
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/a/f;

    iput-object v0, p0, Lcom/android/settings/as;->ft:Lcom/android/settings/a/f;

    .line 1994
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bC;

    iput-object v0, p0, Lcom/android/settings/as;->lV:Lcom/android/settings/bC;

    .line 1995
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/settings/as;->lW:Landroid/view/View;

    .line 1996
    return-void
.end method

.method private static a(Lcom/android/settings/a/c;Landroid/view/View;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2015
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2016
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2018
    if-eqz p0, :cond_0

    .line 2019
    iget-object v2, p0, Lcom/android/settings/a/c;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2020
    iget-object v0, p0, Lcom/android/settings/a/c;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2025
    :goto_0
    return-void

    .line 2022
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2023
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static a(Lcom/android/settings/a/f;Lcom/android/settings/bC;Landroid/view/View;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2000
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/as;

    .line 2001
    if-eqz v0, :cond_0

    .line 2002
    invoke-virtual {v0, v2}, Lcom/android/settings/as;->cancel(Z)Z

    .line 2005
    :cond_0
    iget-object v0, p1, Lcom/android/settings/bC;->vE:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/a/f;->d(IZ)Lcom/android/settings/a/c;

    move-result-object v0

    .line 2006
    if-eqz v0, :cond_1

    .line 2007
    invoke-static {v0, p2}, Lcom/android/settings/as;->a(Lcom/android/settings/a/c;Landroid/view/View;)V

    .line 2012
    :goto_0
    return-void

    .line 2009
    :cond_1
    new-instance v0, Lcom/android/settings/as;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/as;-><init>(Lcom/android/settings/a/f;Lcom/android/settings/bC;Landroid/view/View;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/as;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/android/settings/a/c;
    .locals 3
    .parameter

    .prologue
    .line 2034
    iget-object v0, p0, Lcom/android/settings/as;->ft:Lcom/android/settings/a/f;

    iget-object v1, p0, Lcom/android/settings/as;->lV:Lcom/android/settings/bC;

    iget-object v1, v1, Lcom/android/settings/bC;->vE:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/a/f;->d(IZ)Lcom/android/settings/a/c;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/android/settings/a/c;)V
    .locals 1
    .parameter

    .prologue
    .line 2039
    iget-object v0, p0, Lcom/android/settings/as;->lW:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/android/settings/as;->a(Lcom/android/settings/a/c;Landroid/view/View;)V

    .line 2040
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1987
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/as;->a([Ljava/lang/Void;)Lcom/android/settings/a/c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1987
    check-cast p1, Lcom/android/settings/a/c;

    invoke-virtual {p0, p1}, Lcom/android/settings/as;->a(Lcom/android/settings/a/c;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 2029
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/as;->lW:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/settings/as;->a(Lcom/android/settings/a/c;Landroid/view/View;)V

    .line 2030
    return-void
.end method
