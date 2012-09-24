.class Lcom/android/settings/bA;
.super Landroid/widget/BaseAdapter;
.source "UsageStatsActivity.java"


# instance fields
.field final synthetic ax:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

.field private vG:Lcom/android/settings/az;

.field private vH:Ljava/util/List;

.field private vI:Lcom/android/settings/bT;


# direct methods
.method constructor <init>(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/settings/bA;->ax:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 163
    new-instance v0, Lcom/android/settings/az;

    invoke-direct {v0, p0}, Lcom/android/settings/az;-><init>(Lcom/android/settings/bA;)V

    iput-object v0, p0, Lcom/android/settings/bA;->vG:Lcom/android/settings/az;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bA;->vH:Ljava/util/List;

    .line 165
    new-instance v0, Lcom/android/settings/bT;

    invoke-direct {v0}, Lcom/android/settings/bT;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bA;->vI:Lcom/android/settings/bT;

    .line 207
    return-void
.end method

.method static synthetic a(Lcom/android/settings/bA;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/settings/bA;->update()V

    return-void
.end method

.method private update()V
    .locals 7

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/bA;->ax:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    invoke-static {v0}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->d(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)Lcom/android/settings/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/H;->B()Ljava/util/ArrayList;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/android/settings/bA;->vI:Lcom/android/settings/bT;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 172
    const-string v2, ""

    .line 173
    const/4 v1, 0x0

    .line 174
    iget-object v3, p0, Lcom/android/settings/bA;->vH:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 175
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/aU;

    .line 176
    iget-object v4, v0, Lcom/android/settings/aU;->dC:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 177
    if-eqz v1, :cond_0

    .line 178
    iget-object v2, p0, Lcom/android/settings/bA;->vH:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_0
    new-instance v1, Lcom/android/settings/R;

    invoke-direct {v1, p0}, Lcom/android/settings/R;-><init>(Lcom/android/settings/bA;)V

    .line 181
    iget-object v2, v0, Lcom/android/settings/aU;->dC:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/settings/R;->dC:Ljava/lang/String;

    .line 182
    iget-object v2, v0, Lcom/android/settings/aU;->dC:Ljava/lang/String;

    .line 185
    :cond_1
    iget-object v4, v1, Lcom/android/settings/R;->dD:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/settings/aI;

    iget-object v6, v0, Lcom/android/settings/aU;->nz:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/settings/aU;->nA:Ljava/lang/Long;

    invoke-direct {v5, p0, v6, v0}, Lcom/android/settings/aI;-><init>(Lcom/android/settings/bA;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    :cond_2
    if-eqz v1, :cond_3

    .line 189
    iget-object v0, p0, Lcom/android/settings/bA;->vH:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/bA;->notifyDataSetChanged()V

    .line 193
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/settings/bA;->vH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/settings/bA;->vH:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 204
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 270
    iget-object v0, p0, Lcom/android/settings/bA;->vH:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/R;

    .line 277
    if-nez p2, :cond_1

    .line 278
    iget-object v1, p0, Lcom/android/settings/bA;->ax:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    invoke-static {v1}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->e(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040080

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 282
    new-instance v2, Lcom/android/settings/dh;

    invoke-direct {v2}, Lcom/android/settings/dh;-><init>()V

    .line 283
    const v1, 0x7f080161

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/android/settings/dh;->Im:Landroid/widget/ImageView;

    .line 284
    const v1, 0x7f080163

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/android/settings/dh;->In:Landroid/widget/TextView;

    .line 285
    const v1, 0x7f080162

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/MomentView;

    iput-object v1, v2, Lcom/android/settings/dh;->Io:Lcom/android/settings/MomentView;

    .line 287
    iget-object v3, v2, Lcom/android/settings/dh;->Ip:Lcom/android/settings/bJ;

    const v1, 0x7f080164

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v3, Lcom/android/settings/bJ;->yw:Landroid/widget/LinearLayout;

    .line 289
    new-instance v3, Lcom/android/settings/f;

    invoke-direct {v3}, Lcom/android/settings/f;-><init>()V

    .line 290
    const v1, 0x7f080165

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v3, Lcom/android/settings/f;->au:Landroid/widget/LinearLayout;

    .line 291
    const v1, 0x7f080167

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/f;->av:Landroid/widget/TextView;

    .line 292
    const v1, 0x7f080166

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/android/settings/f;->aw:Landroid/widget/TextView;

    .line 294
    iget-object v1, v2, Lcom/android/settings/dh;->Ip:Lcom/android/settings/bJ;

    iget-object v1, v1, Lcom/android/settings/bJ;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v1, v0, Lcom/android/settings/R;->dD:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v7

    .line 298
    :goto_0
    if-ge v1, v3, :cond_0

    .line 299
    iget-object v6, p0, Lcom/android/settings/bA;->vG:Lcom/android/settings/az;

    invoke-virtual {v6}, Lcom/android/settings/az;->cl()Lcom/android/settings/bd;

    move-result-object v6

    .line 300
    iget-object v8, v2, Lcom/android/settings/dh;->Ip:Lcom/android/settings/bJ;

    iget-object v8, v8, Lcom/android/settings/bJ;->yx:Ljava/util/ArrayList;

    iget-object v9, v6, Lcom/android/settings/bd;->sv:Lcom/android/settings/LineView;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v8, v2, Lcom/android/settings/dh;->Ip:Lcom/android/settings/bJ;

    iget-object v8, v8, Lcom/android/settings/bJ;->yw:Landroid/widget/LinearLayout;

    iget-object v9, v6, Lcom/android/settings/bd;->sv:Lcom/android/settings/LineView;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 303
    iget-object v8, v2, Lcom/android/settings/dh;->Ip:Lcom/android/settings/bJ;

    iget-object v8, v8, Lcom/android/settings/bJ;->yw:Landroid/widget/LinearLayout;

    iget-object v9, v6, Lcom/android/settings/bd;->su:Lcom/android/settings/f;

    iget-object v9, v9, Lcom/android/settings/f;->au:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 304
    iget-object v8, v2, Lcom/android/settings/dh;->Ip:Lcom/android/settings/bJ;

    iget-object v8, v8, Lcom/android/settings/bJ;->mItems:Ljava/util/ArrayList;

    iget-object v6, v6, Lcom/android/settings/bd;->su:Lcom/android/settings/f;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    :cond_0
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 309
    iget-object v1, p0, Lcom/android/settings/bA;->ax:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    iget-object v3, p0, Lcom/android/settings/bA;->ax:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    invoke-static {v3}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->f(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v6, p0, Lcom/android/settings/bA;->ax:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    invoke-static {v6}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->g(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)I

    move-result v6

    sub-int/2addr v3, v6

    invoke-static {v1, v3}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->a(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;I)I

    .line 339
    :goto_1
    iget-object v1, p0, Lcom/android/settings/bA;->ax:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->b(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;I)I

    .line 342
    if-eqz v0, :cond_4

    .line 345
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bA;->ax:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    invoke-static {v1}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->h(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v3, v0, Lcom/android/settings/R;->dC:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 346
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/bA;->ax:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    invoke-virtual {v3}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 347
    iget-object v4, v2, Lcom/android/settings/dh;->Im:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 352
    :goto_2
    iget-object v3, v2, Lcom/android/settings/dh;->In:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/bA;->ax:Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;

    invoke-static {v4}, Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;->h(Lcom/android/settings/UsageStatsActivity$UsageStatsFragment;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v1, v2, Lcom/android/settings/dh;->Ip:Lcom/android/settings/bJ;

    iget-object v1, v1, Lcom/android/settings/bJ;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v5

    .line 355
    :goto_3
    if-ge v3, v4, :cond_4

    .line 356
    iget-object v1, v2, Lcom/android/settings/dh;->Ip:Lcom/android/settings/bJ;

    iget-object v1, v1, Lcom/android/settings/bJ;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/f;

    iget-object v6, v1, Lcom/android/settings/f;->aw:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/android/settings/R;->dD:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/aI;

    iget-object v1, v1, Lcom/android/settings/aI;->nz:Ljava/lang/String;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 359
    iget-object v1, v0, Lcom/android/settings/R;->dD:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/aI;

    iget-object v1, v1, Lcom/android/settings/aI;->nA:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 360
    const/16 v1, 0xb

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 361
    const/16 v8, 0xc

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 363
    const-string v8, "%d:%02d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v7

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 364
    iget-object v1, v2, Lcom/android/settings/dh;->Ip:Lcom/android/settings/bJ;

    iget-object v1, v1, Lcom/android/settings/bJ;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/f;

    iget-object v1, v1, Lcom/android/settings/f;->av:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3

    .line 311
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dh;

    .line 313
    iget-object v2, v1, Lcom/android/settings/dh;->Ip:Lcom/android/settings/bJ;

    iget-object v2, v2, Lcom/android/settings/bJ;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 314
    iget-object v2, v0, Lcom/android/settings/R;->dD:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 315
    if-le v3, v8, :cond_3

    .line 317
    add-int/lit8 v2, v3, -0x1

    move v6, v2

    :goto_4
    if-lt v6, v8, :cond_2

    .line 318
    iget-object v9, p0, Lcom/android/settings/bA;->vG:Lcom/android/settings/az;

    iget-object v2, v1, Lcom/android/settings/dh;->Ip:Lcom/android/settings/bJ;

    iget-object v2, v2, Lcom/android/settings/bJ;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/f;

    iget-object v3, v1, Lcom/android/settings/dh;->Ip:Lcom/android/settings/bJ;

    iget-object v3, v3, Lcom/android/settings/bJ;->yx:Ljava/util/ArrayList;

    add-int/lit8 v10, v6, -0x1

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/LineView;

    invoke-virtual {v9, v2, v3}, Lcom/android/settings/az;->a(Lcom/android/settings/f;Lcom/android/settings/LineView;)V

    .line 320
    iget-object v2, v1, Lcom/android/settings/dh;->Ip:Lcom/android/settings/bJ;

    iget-object v3, v2, Lcom/android/settings/bJ;->yw:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lcom/android/settings/dh;->Ip:Lcom/android/settings/bJ;

    iget-object v2, v2, Lcom/android/settings/bJ;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/f;

    iget-object v2, v2, Lcom/android/settings/f;->au:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 321
    iget-object v2, v1, Lcom/android/settings/dh;->Ip:Lcom/android/settings/bJ;

    iget-object v3, v2, Lcom/android/settings/bJ;->yw:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lcom/android/settings/dh;->Ip:Lcom/android/settings/bJ;

    iget-object v2, v2, Lcom/android/settings/bJ;->yx:Ljava/util/ArrayList;

    add-int/lit8 v9, v6, -0x1

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 322
    iget-object v2, v1, Lcom/android/settings/dh;->Ip:Lcom/android/settings/bJ;

    iget-object v2, v2, Lcom/android/settings/bJ;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 323
    iget-object v2, v1, Lcom/android/settings/dh;->Ip:Lcom/android/settings/bJ;

    iget-object v2, v2, Lcom/android/settings/bJ;->yx:Ljava/util/ArrayList;

    add-int/lit8 v3, v6, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 317
    add-int/lit8 v2, v6, -0x1

    move v6, v2

    goto :goto_4

    :cond_2
    move-object v2, v1

    goto/16 :goto_1

    .line 325
    :cond_3
    if-ge v3, v8, :cond_5

    .line 327
    add-int/lit8 v2, v8, -0x1

    :goto_5
    if-lt v2, v3, :cond_5

    .line 328
    iget-object v6, p0, Lcom/android/settings/bA;->vG:Lcom/android/settings/az;

    invoke-virtual {v6}, Lcom/android/settings/az;->cl()Lcom/android/settings/bd;

    move-result-object v6

    .line 330
    iget-object v8, v1, Lcom/android/settings/dh;->Ip:Lcom/android/settings/bJ;

    iget-object v8, v8, Lcom/android/settings/bJ;->yx:Ljava/util/ArrayList;

    iget-object v9, v6, Lcom/android/settings/bd;->sv:Lcom/android/settings/LineView;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v8, v1, Lcom/android/settings/dh;->Ip:Lcom/android/settings/bJ;

    iget-object v8, v8, Lcom/android/settings/bJ;->yw:Landroid/widget/LinearLayout;

    iget-object v9, v6, Lcom/android/settings/bd;->sv:Lcom/android/settings/LineView;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 333
    iget-object v8, v1, Lcom/android/settings/dh;->Ip:Lcom/android/settings/bJ;

    iget-object v8, v8, Lcom/android/settings/bJ;->yw:Landroid/widget/LinearLayout;

    iget-object v9, v6, Lcom/android/settings/bd;->su:Lcom/android/settings/f;

    iget-object v9, v9, Lcom/android/settings/f;->au:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 334
    iget-object v8, v1, Lcom/android/settings/dh;->Ip:Lcom/android/settings/bJ;

    iget-object v8, v8, Lcom/android/settings/bJ;->mItems:Ljava/util/ArrayList;

    iget-object v6, v6, Lcom/android/settings/bd;->su:Lcom/android/settings/f;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 348
    :catch_0
    move-exception v1

    move-object v3, v1

    move-object v1, v4

    .line 349
    :goto_6
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_2

    .line 367
    :cond_4
    return-object p2

    .line 348
    :catch_1
    move-exception v3

    goto :goto_6

    :cond_5
    move-object v2, v1

    goto/16 :goto_1
.end method
