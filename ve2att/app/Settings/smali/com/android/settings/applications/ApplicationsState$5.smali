.class final Lcom/android/settings/applications/ApplicationsState$5;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Lcom/android/settings/applications/ApplicationsState$AppFilter;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 210
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 216
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v0

    .line 218
    :cond_1
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 221
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method
