.class Lcom/android/settings/dT;
.super Landroid/widget/BaseAdapter;
.source "UsageStats.java"


# instance fields
.field private Ob:I

.field private Oc:Ljava/util/List;

.field private Od:Lcom/android/settings/ay;

.field private Oe:Lcom/android/settings/S;

.field private Of:Lcom/android/settings/ae;

.field private Og:Ljava/util/HashMap;

.field final synthetic Oh:Lcom/android/settings/UsageStats;


# direct methods
.method constructor <init>(Lcom/android/settings/UsageStats;)V
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 119
    iput-object p1, p0, Lcom/android/settings/dT;->Oh:Lcom/android/settings/UsageStats;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 112
    iput v0, p0, Lcom/android/settings/dT;->Ob:I

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/dT;->Oc:Ljava/util/List;

    .line 121
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings/dT;->Og:Ljava/util/HashMap;

    .line 124
    :try_start_0
    invoke-static {p1}, Lcom/android/settings/UsageStats;->a(Lcom/android/settings/UsageStats;)Lcom/android/internal/app/IUsageStats;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/app/IUsageStats;->getAllPkgUsageStats()[Lcom/android/internal/os/PkgUsageStats;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 129
    if-nez v2, :cond_0

    .line 149
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    const-string v0, "UsageStatsActivity"

    const-string v1, "Failed initializing usage stats service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 132
    :cond_0
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 133
    iget-object v0, p0, Lcom/android/settings/dT;->Oc:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :try_start_1
    invoke-static {p1}, Lcom/android/settings/UsageStats;->b(Lcom/android/settings/UsageStats;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v5, v4, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 138
    invoke-static {p1}, Lcom/android/settings/UsageStats;->b(Lcom/android/settings/UsageStats;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 142
    :goto_2
    iget-object v5, p0, Lcom/android/settings/dT;->Og:Ljava/util/HashMap;

    iget-object v4, v4, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 139
    :catch_1
    move-exception v0

    .line 140
    iget-object v0, v4, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    goto :goto_2

    .line 145
    :cond_1
    new-instance v0, Lcom/android/settings/ay;

    invoke-direct {v0}, Lcom/android/settings/ay;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dT;->Od:Lcom/android/settings/ay;

    .line 146
    new-instance v0, Lcom/android/settings/S;

    invoke-direct {v0}, Lcom/android/settings/S;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dT;->Oe:Lcom/android/settings/S;

    .line 147
    new-instance v0, Lcom/android/settings/ae;

    iget-object v1, p0, Lcom/android/settings/dT;->Og:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lcom/android/settings/ae;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/android/settings/dT;->Of:Lcom/android/settings/ae;

    .line 148
    invoke-direct {p0}, Lcom/android/settings/dT;->lP()V

    goto :goto_0
.end method

.method private lP()V
    .locals 2

    .prologue
    .line 208
    iget v0, p0, Lcom/android/settings/dT;->Ob:I

    if-nez v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/settings/dT;->Oc:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/dT;->Oe:Lcom/android/settings/S;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 218
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/dT;->notifyDataSetChanged()V

    .line 219
    return-void

    .line 211
    :cond_1
    iget v0, p0, Lcom/android/settings/dT;->Ob:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 213
    iget-object v0, p0, Lcom/android/settings/dT;->Oc:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/dT;->Od:Lcom/android/settings/ay;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 214
    :cond_2
    iget v0, p0, Lcom/android/settings/dT;->Ob:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/settings/dT;->Oc:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/dT;->Of:Lcom/android/settings/ae;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method


# virtual methods
.method bb(I)V
    .locals 1
    .parameter

    .prologue
    .line 200
    iget v0, p0, Lcom/android/settings/dT;->Ob:I

    if-ne v0, p1, :cond_0

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    iput p1, p0, Lcom/android/settings/dT;->Ob:I

    .line 205
    invoke-direct {p0}, Lcom/android/settings/dT;->lP()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings/dT;->Oc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/dT;->Oc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 159
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    if-nez p2, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/settings/dT;->Oh:Lcom/android/settings/UsageStats;

    invoke-static {v0}, Lcom/android/settings/UsageStats;->c(Lcom/android/settings/UsageStats;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040081

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 175
    new-instance v1, Lcom/android/settings/bz;

    invoke-direct {v1}, Lcom/android/settings/bz;-><init>()V

    .line 176
    const v0, 0x7f080163

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/bz;->vG:Landroid/widget/TextView;

    .line 177
    const v0, 0x7f080168

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/bz;->vH:Landroid/widget/TextView;

    .line 178
    const v0, 0x7f080167

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/settings/bz;->vI:Landroid/widget/TextView;

    .line 179
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    .line 187
    :goto_0
    iget-object v0, p0, Lcom/android/settings/dT;->Oc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/PkgUsageStats;

    .line 188
    if-eqz v0, :cond_1

    .line 189
    iget-object v1, p0, Lcom/android/settings/dT;->Og:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/internal/os/PkgUsageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 190
    iget-object v3, v2, Lcom/android/settings/bz;->vG:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v1, v2, Lcom/android/settings/bz;->vH:Landroid/widget/TextView;

    iget v3, v0, Lcom/android/internal/os/PkgUsageStats;->launchCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v1, v2, Lcom/android/settings/bz;->vI:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, v0, Lcom/android/internal/os/PkgUsageStats;->usageTime:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :goto_1
    return-object p2

    .line 183
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bz;

    move-object v2, v0

    goto :goto_0

    .line 194
    :cond_1
    const-string v0, "UsageStatsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No usage stats info for package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
