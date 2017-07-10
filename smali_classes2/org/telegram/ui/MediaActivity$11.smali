.class Lorg/telegram/ui/MediaActivity$11;
.super Ljava/lang/Object;
.source "MediaActivity.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MediaActivity;->getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/MediaActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MediaActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 2126
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$11;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSetColor(I)V
    .registers 6
    .param p1, "color"    # I

    .prologue
    .line 2129
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$11;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$900(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    .line 2130
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_b
    if-ge v0, v2, :cond_23

    .line 2131
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$11;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$900(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2132
    .local v1, "child":Landroid/view/View;
    instance-of v3, v1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    if-eqz v3, :cond_20

    .line 2133
    check-cast v1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    .end local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->updateCheckboxColor()V

    .line 2130
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 2136
    :cond_23
    return-void
.end method
