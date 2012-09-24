.class Lcom/android/settings/bG;
.super Ljava/lang/Object;
.source "MiuiSettings.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic vh:Lcom/android/settings/MiuiSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/MiuiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/settings/bG;->vh:Lcom/android/settings/MiuiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/MiuiSettings;Lcom/android/settings/dY;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/android/settings/bG;-><init>(Lcom/android/settings/MiuiSettings;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter

    .prologue
    .line 314
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 318
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .parameter

    .prologue
    .line 322
    invoke-static {p1}, Lcom/android/settings/MiuiSettings$TabState;->G(I)Lcom/android/settings/MiuiSettings$TabState;

    move-result-object v0

    .line 323
    iget-object v1, p0, Lcom/android/settings/bG;->vh:Lcom/android/settings/MiuiSettings;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/MiuiSettings;->a(Lcom/android/settings/MiuiSettings$TabState;Z)V

    .line 324
    return-void
.end method
