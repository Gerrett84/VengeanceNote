.class Lcom/android/settings/dc;
.super Ljava/lang/Object;
.source "VirusScanActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic eG:Lcom/android/settings/VirusScanActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/VirusScanActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/settings/dc;->eG:Lcom/android/settings/VirusScanActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    packed-switch p3, :pswitch_data_0

    .line 131
    :goto_0
    return-void

    .line 125
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/dc;->eG:Lcom/android/settings/VirusScanActivity;

    const/16 v1, 0x111

    invoke-virtual {v0, v1}, Lcom/android/settings/VirusScanActivity;->showDialog(I)V

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
