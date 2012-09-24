.class Lcom/android/settings/y;
.super Landroid/widget/ArrayAdapter;
.source "AccessibilityTutorialActivity.java"


# instance fields
.field protected final cs:I

.field private final ct:I

.field private final cu:Landroid/view/View$OnHoverListener;

.field private cv:Landroid/view/View$OnHoverListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 206
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/y;->ct:I

    .line 209
    iput p3, p0, Lcom/android/settings/y;->cs:I

    .line 210
    new-instance v0, Lcom/android/settings/X;

    invoke-direct {v0, p0}, Lcom/android/settings/X;-><init>(Lcom/android/settings/y;)V

    iput-object v0, p0, Lcom/android/settings/y;->cu:Landroid/view/View$OnHoverListener;

    .line 221
    invoke-direct {p0}, Lcom/android/settings/y;->I()V

    .line 222
    return-void
.end method

.method private I()V
    .locals 3

    .prologue
    .line 250
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 251
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/y;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 254
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 256
    invoke-virtual {p0, v0}, Lcom/android/settings/y;->addAll(Ljava/util/Collection;)V

    .line 257
    return-void
.end method

.method static synthetic a(Lcom/android/settings/y;)Landroid/view/View$OnHoverListener;
    .locals 1
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/settings/y;->cv:Landroid/view/View$OnHoverListener;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/widget/TextView;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 260
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    invoke-virtual {p1, v0, p3, v0, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 262
    return-void
.end method

.method public e(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/android/settings/y;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 226
    invoke-virtual {p0, p1}, Lcom/android/settings/y;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 227
    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/y;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 233
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 234
    iget-object v0, p0, Lcom/android/settings/y;->cu:Landroid/view/View$OnHoverListener;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 235
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 237
    invoke-virtual {p0, p1}, Lcom/android/settings/y;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 238
    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 239
    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 240
    iget v0, p0, Lcom/android/settings/y;->cs:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 242
    iget v4, p0, Lcom/android/settings/y;->ct:I

    iget v5, p0, Lcom/android/settings/y;->ct:I

    invoke-virtual {v1, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 244
    invoke-virtual {p0, v0, v3, v1}, Lcom/android/settings/y;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 246
    return-object v2
.end method

.method public setOnHoverListener(Landroid/view/View$OnHoverListener;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/settings/y;->cv:Landroid/view/View$OnHoverListener;

    .line 266
    return-void
.end method
