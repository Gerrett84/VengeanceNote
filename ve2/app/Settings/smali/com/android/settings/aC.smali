.class public Lcom/android/settings/aC;
.super Landroid/widget/BaseAdapter;
.source "DreamComponentPreference.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# instance fields
.field final synthetic l:Lcom/android/settings/DreamComponentPreference;

.field private final mH:Landroid/view/LayoutInflater;

.field private results:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/settings/DreamComponentPreference;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/settings/aC;->l:Lcom/android/settings/DreamComponentPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 133
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/aC;->mH:Landroid/view/LayoutInflater;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/aC;->results:Ljava/util/ArrayList;

    .line 142
    iget-object v0, p0, Lcom/android/settings/aC;->results:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/settings/DreamComponentPreference;->a(Lcom/android/settings/DreamComponentPreference;)Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 146
    iget-object v0, p0, Lcom/android/settings/aC;->results:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/settings/DreamComponentPreference;->LX:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 161
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/settings/aC;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings/aC;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 175
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 196
    if-eqz p2, :cond_0

    .line 199
    :goto_0
    iget-object v0, p0, Lcom/android/settings/aC;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 200
    const v1, 0x7f08001a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/aC;->l:Lcom/android/settings/DreamComponentPreference;

    invoke-static {v2}, Lcom/android/settings/DreamComponentPreference;->a(Lcom/android/settings/DreamComponentPreference;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    const v1, 0x7f080019

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/aC;->l:Lcom/android/settings/DreamComponentPreference;

    invoke-static {v2}, Lcom/android/settings/DreamComponentPreference;->a(Lcom/android/settings/DreamComponentPreference;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    return-object p2

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/settings/aC;->mH:Landroid/view/LayoutInflater;

    const v1, 0x7f040033

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0
.end method
