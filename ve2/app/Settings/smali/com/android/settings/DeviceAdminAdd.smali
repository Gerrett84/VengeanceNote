.class public Lcom/android/settings/DeviceAdminAdd;
.super Landroid/app/Activity;
.source "DeviceAdminAdd.java"


# instance fields
.field mHandler:Landroid/os/Handler;

.field mT:Landroid/app/admin/DevicePolicyManager;

.field mU:Landroid/app/admin/DeviceAdminInfo;

.field mV:Ljava/lang/CharSequence;

.field mW:Landroid/widget/ImageView;

.field mX:Landroid/widget/TextView;

.field mY:Landroid/widget/TextView;

.field mZ:Landroid/widget/TextView;

.field na:Landroid/widget/ImageView;

.field nb:Z

.field nc:Landroid/widget/TextView;

.field nd:Landroid/view/ViewGroup;

.field ne:Landroid/widget/Button;

.field nf:Landroid/widget/Button;

.field final ng:Ljava/util/ArrayList;

.field final nh:Ljava/util/ArrayList;

.field ni:Z

.field nj:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/DeviceAdminAdd;->nb:Z

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->ng:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->nh:Ljava/util/ArrayList;

    return-void
.end method

.method static a(Ljava/util/ArrayList;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 265
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 266
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 267
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 266
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 269
    :cond_0
    return-void
.end method


# virtual methods
.method c(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 330
    check-cast p1, Landroid/widget/TextView;

    .line 332
    iget-boolean v0, p0, Lcom/android/settings/DeviceAdminAdd;->nb:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/DeviceAdminAdd;->nb:Z

    .line 333
    iget-boolean v0, p0, Lcom/android/settings/DeviceAdminAdd;->nb:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 334
    iget-boolean v0, p0, Lcom/android/settings/DeviceAdminAdd;->nb:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->dm()I

    move-result v0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 336
    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd;->na:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/settings/DeviceAdminAdd;->nb:Z

    if-eqz v0, :cond_3

    const v0, 0x6020130

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 339
    return-void

    .line 332
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 333
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 334
    :cond_2
    const/16 v0, 0xf

    goto :goto_2

    .line 336
    :cond_3
    const v0, 0x602015d

    goto :goto_3
.end method

.method dl()V
    .locals 7

    .prologue
    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 272
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mW:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd;->mU:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 273
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mX:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd;->mU:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mY:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd;->mU:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/admin/DeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mY:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mV:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mZ:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd;->mV:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mZ:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    :goto_1
    iget-boolean v0, p0, Lcom/android/settings/DeviceAdminAdd;->nj:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mT:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/DeviceAdminAdd;->mU:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->nh:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mU:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v3

    move v1, v2

    .line 291
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 292
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 293
    iget v0, v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->label:I

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v4, ""

    invoke-static {p0, v0, v4, v6}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;

    move-result-object v0

    .line 295
    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->nh:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->nd:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 291
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 278
    :catch_0
    move-exception v0

    .line 279
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mY:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mZ:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->na:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->nh:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lcom/android/settings/DeviceAdminAdd;->a(Ljava/util/ArrayList;I)V

    .line 300
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->ng:Ljava/util/ArrayList;

    invoke-static {v0, v5}, Lcom/android/settings/DeviceAdminAdd;->a(Ljava/util/ArrayList;I)V

    .line 301
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->nc:Landroid/widget/TextView;

    const v1, 0x7f0b050a

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mU:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/DeviceAdminAdd;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    const v0, 0x7f0b0502

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->setTitle(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->ne:Landroid/widget/Button;

    const v1, 0x7f0b0503

    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iput-boolean v2, p0, Lcom/android/settings/DeviceAdminAdd;->ni:Z

    .line 325
    :goto_3
    return-void

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->ng:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 308
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mU:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v3

    move v1, v2

    .line 309
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 310
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 311
    iget v4, v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->label:I

    invoke-virtual {p0, v4}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget v0, v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->description:I

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v4, v0, v6}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;

    move-result-object v0

    .line 313
    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->ng:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->nd:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 309
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 317
    :cond_3
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->ng:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lcom/android/settings/DeviceAdminAdd;->a(Ljava/util/ArrayList;I)V

    .line 318
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->nh:Ljava/util/ArrayList;

    invoke-static {v0, v5}, Lcom/android/settings/DeviceAdminAdd;->a(Ljava/util/ArrayList;I)V

    .line 319
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->nc:Landroid/widget/TextView;

    const v1, 0x7f0b0509

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mU:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/DeviceAdminAdd;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    const v0, 0x7f0b0506

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->setTitle(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->ne:Landroid/widget/Button;

    const v1, 0x7f0b0507

    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iput-boolean v6, p0, Lcom/android/settings/DeviceAdminAdd;->ni:Z

    goto :goto_3
.end method

.method dm()I
    .locals 2

    .prologue
    .line 342
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    if-le v1, v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mHandler:Landroid/os/Handler;

    .line 94
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mT:Landroid/app/admin/DevicePolicyManager;

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v2, 0x1000

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "DeviceAdminAdd"

    const-string v1, "Cannot start ADD_DEVICE_ADMIN as a new task"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    .line 232
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 104
    if-nez v0, :cond_1

    .line 105
    const-string v0, "DeviceAdminAdd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No component specified in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto :goto_0

    .line 112
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 119
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 120
    iput-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 122
    :try_start_1
    new-instance v2, Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v2, p0, v3}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    iput-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mU:Landroid/app/admin/DeviceAdminInfo;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 136
    const-string v2, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 137
    iput-boolean v1, p0, Lcom/android/settings/DeviceAdminAdd;->nj:Z

    .line 138
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mT:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v0}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 139
    iget-object v2, p0, Lcom/android/settings/DeviceAdminAdd;->mU:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v3

    move v2, v1

    .line 140
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 141
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 142
    iget-object v4, p0, Lcom/android/settings/DeviceAdminAdd;->mT:Landroid/app/admin/DevicePolicyManager;

    iget v1, v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {v4, v0, v1}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/DeviceAdminAdd;->nj:Z

    .line 147
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/DeviceAdminAdd;->nj:Z

    if-nez v0, :cond_4

    .line 149
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->setResult(I)V

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    .line 113
    :catch_0
    move-exception v1

    .line 114
    const-string v2, "DeviceAdminAdd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retrieve device policy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    .line 123
    :catch_1
    move-exception v1

    .line 124
    const-string v2, "DeviceAdminAdd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retrieve device policy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    .line 127
    :catch_2
    move-exception v1

    .line 128
    const-string v2, "DeviceAdminAdd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retrieve device policy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    .line 140
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_1

    .line 155
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.app.extra.ADD_EXPLANATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mV:Ljava/lang/CharSequence;

    .line 157
    const v0, 0x7f04002e

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->setContentView(I)V

    .line 159
    const v0, 0x7f080068

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mW:Landroid/widget/ImageView;

    .line 160
    const v0, 0x7f080069

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mX:Landroid/widget/TextView;

    .line 161
    const v0, 0x7f08006a

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mY:Landroid/widget/TextView;

    .line 163
    const v0, 0x7f08006c

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mZ:Landroid/widget/TextView;

    .line 164
    const v0, 0x7f08006b

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->na:Landroid/widget/ImageView;

    .line 165
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mZ:Landroid/widget/TextView;

    new-instance v1, Lcom/android/settings/bK;

    invoke-direct {v1, p0}, Lcom/android/settings/bK;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->mZ:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->c(Landroid/view/View;)V

    .line 174
    const v0, 0x7f08006d

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->nc:Landroid/widget/TextView;

    .line 175
    const v0, 0x7f08006e

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->nd:Landroid/view/ViewGroup;

    .line 176
    const v0, 0x7f080027

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->nf:Landroid/widget/Button;

    .line 177
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->nf:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/bN;

    invoke-direct {v1, p0}, Lcom/android/settings/bN;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    const v0, 0x7f080070

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->ne:Landroid/widget/Button;

    .line 183
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAdd;->ne:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/bM;

    invoke-direct {v1, p0}, Lcom/android/settings/bM;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 242
    packed-switch p1, :pswitch_data_0

    .line 259
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 244
    :pswitch_0
    const-string v0, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 245
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 247
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 248
    const v0, 0x7f0b03b1

    new-instance v2, Lcom/android/settings/bO;

    invoke-direct {v2, p0}, Lcom/android/settings/bO;-><init>(Lcom/android/settings/DeviceAdminAdd;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 255
    const v0, 0x7f0b03b2

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 256
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 236
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/DeviceAdminAdd;->dl()V

    .line 238
    return-void
.end method
