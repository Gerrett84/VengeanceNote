.class Lcom/android/settings/quicklaunch/d;
.super Ljava/lang/Thread;
.source "BookmarkPicker.java"


# instance fields
.field final synthetic EL:Lcom/android/settings/quicklaunch/BookmarkPicker;


# direct methods
.method constructor <init>(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/settings/quicklaunch/d;->EL:Lcom/android/settings/quicklaunch/BookmarkPicker;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 156
    iget-object v1, p0, Lcom/android/settings/quicklaunch/d;->EL:Lcom/android/settings/quicklaunch/BookmarkPicker;

    monitor-enter v1

    .line 161
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 164
    iget-object v3, p0, Lcom/android/settings/quicklaunch/d;->EL:Lcom/android/settings/quicklaunch/BookmarkPicker;

    invoke-static {v3, v0}, Lcom/android/settings/quicklaunch/BookmarkPicker;->a(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/util/List;)V

    .line 165
    new-instance v3, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object v4, p0, Lcom/android/settings/quicklaunch/d;->EL:Lcom/android/settings/quicklaunch/BookmarkPicker;

    invoke-virtual {v4}, Lcom/android/settings/quicklaunch/BookmarkPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 168
    iget-object v3, p0, Lcom/android/settings/quicklaunch/d;->EL:Lcom/android/settings/quicklaunch/BookmarkPicker;

    invoke-static {v3, v2, v0}, Lcom/android/settings/quicklaunch/BookmarkPicker;->a(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/util/List;Ljava/util/List;)V

    .line 170
    iget-object v3, p0, Lcom/android/settings/quicklaunch/d;->EL:Lcom/android/settings/quicklaunch/BookmarkPicker;

    invoke-static {v3, v2, v0}, Lcom/android/settings/quicklaunch/BookmarkPicker;->a(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 171
    monitor-exit v1

    .line 172
    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
