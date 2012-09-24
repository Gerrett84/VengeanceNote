.class final Lcom/android/settings/applications/ApplicationsState$6;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Lcom/android/settings/applications/ApplicationsState$AppFilter;


# instance fields
.field final a:Lcom/android/settings/applications/CanBeOnSdCardChecker;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 225
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance v0, Lcom/android/settings/applications/CanBeOnSdCardChecker;

    invoke-direct {v0}, Lcom/android/settings/applications/CanBeOnSdCardChecker;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState$6;->a:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$6;->a:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/CanBeOnSdCardChecker;->b(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$6;->a:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    invoke-virtual {v0}, Lcom/android/settings/applications/CanBeOnSdCardChecker;->init()V

    .line 231
    return-void
.end method
