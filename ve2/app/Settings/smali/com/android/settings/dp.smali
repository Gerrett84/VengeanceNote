.class Lcom/android/settings/dp;
.super Ljava/lang/Object;
.source "MiuiSettings.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# instance fields
.field final synthetic sN:Lcom/android/settings/MiuiSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/MiuiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/settings/dp;->sN:Lcom/android/settings/MiuiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/MiuiSettings;Lcom/android/settings/dF;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/android/settings/dp;-><init>(Lcom/android/settings/MiuiSettings;)V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 258
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 262
    iget-object v1, p0, Lcom/android/settings/dp;->sN:Lcom/android/settings/MiuiSettings;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/MiuiSettings$TabState;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/MiuiSettings;->a(Lcom/android/settings/MiuiSettings$TabState;Z)V

    .line 263
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 253
    return-void
.end method
