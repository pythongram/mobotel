.class Lorg/telegram/ui/WallpapersActivity$4;
.super Ljava/lang/Object;
.source "WallpapersActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/WallpapersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/WallpapersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/WallpapersActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/WallpapersActivity;

    .prologue
    .line 226
    iput-object p1, p0, Lorg/telegram/ui/WallpapersActivity$4;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 229
    if-nez p2, :cond_e

    .line 230
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity$4;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # getter for: Lorg/telegram/ui/WallpapersActivity;->updater:Lorg/telegram/ui/Components/WallpaperUpdater;
    invoke-static {v1}, Lorg/telegram/ui/WallpapersActivity;->access$600(Lorg/telegram/ui/WallpapersActivity;)Lorg/telegram/ui/Components/WallpaperUpdater;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/WallpaperUpdater;->showAlert(Z)V

    .line 251
    :goto_d
    return-void

    .line 232
    :cond_e
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasWallpaperFromTheme()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 233
    if-ne p2, v4, :cond_30

    .line 234
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity$4;->this$0:Lorg/telegram/ui/WallpapersActivity;

    const/4 v2, -0x2

    # setter for: Lorg/telegram/ui/WallpapersActivity;->selectedBackground:I
    invoke-static {v1, v2}, Lorg/telegram/ui/WallpapersActivity;->access$002(Lorg/telegram/ui/WallpapersActivity;I)I

    .line 235
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity$4;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # setter for: Lorg/telegram/ui/WallpapersActivity;->overrideThemeWallpaper:Z
    invoke-static {v1, v3}, Lorg/telegram/ui/WallpapersActivity;->access$102(Lorg/telegram/ui/WallpapersActivity;Z)Z

    .line 236
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity$4;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # getter for: Lorg/telegram/ui/WallpapersActivity;->listAdapter:Lorg/telegram/ui/WallpapersActivity$ListAdapter;
    invoke-static {v1}, Lorg/telegram/ui/WallpapersActivity;->access$700(Lorg/telegram/ui/WallpapersActivity;)Lorg/telegram/ui/WallpapersActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/WallpapersActivity$ListAdapter;->notifyDataSetChanged()V

    .line 237
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity$4;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # invokes: Lorg/telegram/ui/WallpapersActivity;->processSelectedBackground()V
    invoke-static {v1}, Lorg/telegram/ui/WallpapersActivity;->access$800(Lorg/telegram/ui/WallpapersActivity;)V

    goto :goto_d

    .line 240
    :cond_30
    add-int/lit8 p2, p2, -0x2

    .line 245
    :goto_32
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity$4;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # getter for: Lorg/telegram/ui/WallpapersActivity;->wallPapers:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/WallpapersActivity;->access$900(Lorg/telegram/ui/WallpapersActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 246
    .local v0, "wallPaper":Lorg/telegram/tgnet/TLRPC$WallPaper;
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity$4;->this$0:Lorg/telegram/ui/WallpapersActivity;

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:I

    # setter for: Lorg/telegram/ui/WallpapersActivity;->selectedBackground:I
    invoke-static {v1, v2}, Lorg/telegram/ui/WallpapersActivity;->access$002(Lorg/telegram/ui/WallpapersActivity;I)I

    .line 247
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity$4;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # setter for: Lorg/telegram/ui/WallpapersActivity;->overrideThemeWallpaper:Z
    invoke-static {v1, v4}, Lorg/telegram/ui/WallpapersActivity;->access$102(Lorg/telegram/ui/WallpapersActivity;Z)Z

    .line 248
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity$4;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # getter for: Lorg/telegram/ui/WallpapersActivity;->listAdapter:Lorg/telegram/ui/WallpapersActivity$ListAdapter;
    invoke-static {v1}, Lorg/telegram/ui/WallpapersActivity;->access$700(Lorg/telegram/ui/WallpapersActivity;)Lorg/telegram/ui/WallpapersActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/WallpapersActivity$ListAdapter;->notifyDataSetChanged()V

    .line 249
    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity$4;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # invokes: Lorg/telegram/ui/WallpapersActivity;->processSelectedBackground()V
    invoke-static {v1}, Lorg/telegram/ui/WallpapersActivity;->access$800(Lorg/telegram/ui/WallpapersActivity;)V

    goto :goto_d

    .line 243
    .end local v0    # "wallPaper":Lorg/telegram/tgnet/TLRPC$WallPaper;
    :cond_59
    add-int/lit8 p2, p2, -0x1

    goto :goto_32
.end method
