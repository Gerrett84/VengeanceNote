.class Landroid/view/ViewGroup$Injector;
.super Ljava/lang/Object;
.source "ViewGroup.java"


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_CLASS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static tagChildSequenceState(Landroid/view/ViewGroup;)V
    .locals 11
    .parameter "v"

    .prologue
    .line 104
    const/4 v5, 0x1

    .line 105
    .local v5, isFirst:Z
    const/4 v7, 0x0

    .line 106
    .local v7, taggingChild:Landroid/view/View;
    const/4 v6, 0x1

    .line 107
    .local v6, prevDiff:Z
    const/4 v8, -0x1

    .line 108
    .local v8, taggingChildDrawableId:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    #getter for: Landroid/view/ViewGroup;->mChildrenCount:I
    invoke-static {p0}, Landroid/view/ViewGroup;->access$000(Landroid/view/ViewGroup;)I

    move-result v10

    if-ge v4, v10, :cond_b

    .line 109
    #getter for: Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;
    invoke-static {p0}, Landroid/view/ViewGroup;->access$100(Landroid/view/ViewGroup;)[Landroid/view/View;

    move-result-object v10

    aget-object v0, v10, v4

    .line 110
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 111
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getId()I

    move-result v3

    .line 112
    .local v3, drawableId:I
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    .line 113
    .local v9, visibility:I
    const/4 v10, -0x1

    if-ne v3, v10, :cond_0

    .line 114
    const/4 v9, 0x4

    .line 116
    :cond_0
    sparse-switch v9, :sswitch_data_0

    .line 108
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 111
    .end local v3           #drawableId:I
    .end local v9           #visibility:I
    :cond_1
    const/4 v3, -0x1

    goto :goto_1

    .line 118
    .restart local v3       #drawableId:I
    .restart local v9       #visibility:I
    :sswitch_0
    if-eqz v5, :cond_3

    .line 119
    const/4 v5, 0x0

    .line 120
    iget-object v10, p0, Landroid/view/ViewGroup;->mChildSequenceStateTaggingListener:Landroid/view/ViewGroup$ChildSequenceStateTaggingListener;

    if-nez v10, :cond_2

    const/4 v6, 0x1

    .line 135
    :goto_3
    move v8, v3

    .line 136
    move-object v7, v0

    .line 137
    goto :goto_2

    .line 120
    :cond_2
    iget-object v10, p0, Landroid/view/ViewGroup;->mChildSequenceStateTaggingListener:Landroid/view/ViewGroup$ChildSequenceStateTaggingListener;

    invoke-interface {v10, p0, v0}, Landroid/view/ViewGroup$ChildSequenceStateTaggingListener;->onTaggingFirstChildSequenceState(Landroid/view/ViewGroup;Landroid/view/View;)Z

    move-result v6

    goto :goto_3

    .line 123
    :cond_3
    if-nez v7, :cond_4

    .line 124
    const/4 v6, 0x1

    goto :goto_3

    .line 126
    :cond_4
    if-eq v3, v8, :cond_5

    const/4 v2, 0x1

    .line 127
    .local v2, diff:Z
    :goto_4
    if-eqz v6, :cond_7

    .line 128
    if-eqz v2, :cond_6

    const v10, 0x10100a3

    :goto_5
    invoke-virtual {v7, v10}, Landroid/view/View;->setAdditionalState(I)V

    .line 132
    :goto_6
    move v6, v2

    goto :goto_3

    .line 126
    .end local v2           #diff:Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    .line 128
    .restart local v2       #diff:Z
    :cond_6
    const v10, 0x10100a4

    goto :goto_5

    .line 130
    :cond_7
    if-eqz v2, :cond_8

    const v10, 0x10100a6

    :goto_7
    invoke-virtual {v7, v10}, Landroid/view/View;->setAdditionalState(I)V

    goto :goto_6

    :cond_8
    const v10, 0x10100a5

    goto :goto_7

    .line 139
    .end local v2           #diff:Z
    :sswitch_1
    const/4 v5, 0x0

    .line 140
    if-eqz v7, :cond_9

    .line 141
    if-eqz v6, :cond_a

    const v10, 0x10100a3

    :goto_8
    invoke-virtual {v7, v10}, Landroid/view/View;->setAdditionalState(I)V

    .line 143
    :cond_9
    const/4 v6, 0x1

    .line 144
    const/4 v8, -0x1

    .line 145
    const/4 v7, 0x0

    goto :goto_2

    .line 141
    :cond_a
    const v10, 0x10100a6

    goto :goto_8

    .line 150
    .end local v0           #child:Landroid/view/View;
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #drawableId:I
    .end local v9           #visibility:I
    :cond_b
    if-eqz v7, :cond_c

    .line 151
    iget-object v10, p0, Landroid/view/ViewGroup;->mChildSequenceStateTaggingListener:Landroid/view/ViewGroup$ChildSequenceStateTaggingListener;

    if-nez v10, :cond_d

    const/4 v2, 0x1

    .line 153
    .restart local v2       #diff:Z
    :goto_9
    if-eqz v6, :cond_f

    .line 154
    if-eqz v2, :cond_e

    const v10, 0x10100a3

    :goto_a
    invoke-virtual {v7, v10}, Landroid/view/View;->setAdditionalState(I)V

    .line 159
    .end local v2           #diff:Z
    :cond_c
    :goto_b
    return-void

    .line 151
    :cond_d
    iget-object v10, p0, Landroid/view/ViewGroup;->mChildSequenceStateTaggingListener:Landroid/view/ViewGroup$ChildSequenceStateTaggingListener;

    invoke-interface {v10, p0, v7}, Landroid/view/ViewGroup$ChildSequenceStateTaggingListener;->onTaggingLastChildSequenceState(Landroid/view/ViewGroup;Landroid/view/View;)Z

    move-result v2

    goto :goto_9

    .line 154
    .restart local v2       #diff:Z
    :cond_e
    const v10, 0x10100a4

    goto :goto_a

    .line 156
    :cond_f
    if-eqz v2, :cond_10

    const v10, 0x10100a6

    :goto_c
    invoke-virtual {v7, v10}, Landroid/view/View;->setAdditionalState(I)V

    goto :goto_b

    :cond_10
    const v10, 0x10100a5

    goto :goto_c

    .line 116
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method
