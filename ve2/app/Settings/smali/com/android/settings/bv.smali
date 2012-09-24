.class Lcom/android/settings/bv;
.super Ljava/lang/Object;
.source "MiuiSettings.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic sN:Lcom/android/settings/MiuiSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/MiuiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/settings/bv;->sN:Lcom/android/settings/MiuiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/MiuiSettings;Lcom/android/settings/dF;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/android/settings/bv;-><init>(Lcom/android/settings/MiuiSettings;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter

    .prologue
    .line 270
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 274
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .parameter

    .prologue
    .line 278
    invoke-static {p1}, Lcom/android/settings/MiuiSettings$TabState;->A(I)Lcom/android/settings/MiuiSettings$TabState;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/android/settings/bv;->sN:Lcom/android/settings/MiuiSettings;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/MiuiSettings;->a(Lcom/android/settings/MiuiSettings$TabState;Z)V

    .line 280
    return-void
.end method
