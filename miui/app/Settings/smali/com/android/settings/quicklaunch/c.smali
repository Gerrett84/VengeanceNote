.class Lcom/android/settings/quicklaunch/c;
.super Ljava/lang/Object;
.source "BookmarkPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic IC:Ljava/util/ArrayList;

.field final synthetic ID:Ljava/util/ArrayList;

.field final synthetic IE:Lcom/android/settings/quicklaunch/BookmarkPicker;


# direct methods
.method constructor <init>(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/settings/quicklaunch/c;->IE:Lcom/android/settings/quicklaunch/BookmarkPicker;

    iput-object p2, p0, Lcom/android/settings/quicklaunch/c;->IC:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/settings/quicklaunch/c;->ID:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/quicklaunch/c;->IE:Lcom/android/settings/quicklaunch/BookmarkPicker;

    iget-object v1, p0, Lcom/android/settings/quicklaunch/c;->IE:Lcom/android/settings/quicklaunch/BookmarkPicker;

    iget-object v2, p0, Lcom/android/settings/quicklaunch/c;->IC:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/settings/quicklaunch/BookmarkPicker;->b(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/util/List;)Landroid/widget/SimpleAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/quicklaunch/BookmarkPicker;->a(Lcom/android/settings/quicklaunch/BookmarkPicker;Landroid/widget/SimpleAdapter;)Landroid/widget/SimpleAdapter;

    .line 186
    iget-object v0, p0, Lcom/android/settings/quicklaunch/c;->IE:Lcom/android/settings/quicklaunch/BookmarkPicker;

    iget-object v1, p0, Lcom/android/settings/quicklaunch/c;->ID:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/settings/quicklaunch/BookmarkPicker;->c(Lcom/android/settings/quicklaunch/BookmarkPicker;Ljava/util/List;)Ljava/util/List;

    .line 187
    iget-object v0, p0, Lcom/android/settings/quicklaunch/c;->IE:Lcom/android/settings/quicklaunch/BookmarkPicker;

    iget-object v1, p0, Lcom/android/settings/quicklaunch/c;->IE:Lcom/android/settings/quicklaunch/BookmarkPicker;

    invoke-static {v1}, Lcom/android/settings/quicklaunch/BookmarkPicker;->a(Lcom/android/settings/quicklaunch/BookmarkPicker;)Landroid/widget/SimpleAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/quicklaunch/BookmarkPicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 188
    return-void
.end method
