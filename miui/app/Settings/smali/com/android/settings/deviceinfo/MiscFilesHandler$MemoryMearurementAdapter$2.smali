.class Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;
.super Ljava/lang/Object;
.source "MiscFilesHandler.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic eZ:I

.field final synthetic fa:Lcom/android/settings/deviceinfo/FileItemInfoLayout;

.field final synthetic fb:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;Landroid/widget/ListView;ILcom/android/settings/deviceinfo/FileItemInfoLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;->fb:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;->val$listView:Landroid/widget/ListView;

    iput p3, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;->eZ:I

    iput-object p4, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;->fa:Lcom/android/settings/deviceinfo/FileItemInfoLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 268
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 272
    :goto_0
    return v0

    .line 271
    :cond_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;->val$listView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;->eZ:I

    iget-object v4, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$2;->fa:Lcom/android/settings/deviceinfo/FileItemInfoLayout;

    invoke-virtual {v4}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v3, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    move v0, v1

    .line 272
    goto :goto_0
.end method
