.class Lorg/telegram/ui/Components/ThemeEditorView$2;
.super Ljava/lang/Object;
.source "ThemeEditorView.java"

# interfaces
.implements Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ThemeEditorView;->show(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ThemeEditorView;

.field final synthetic val$themeName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ThemeEditorView;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ThemeEditorView;

    .prologue
    .line 1014
    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView$2;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    iput-object p2, p0, Lorg/telegram/ui/Components/ThemeEditorView$2;->val$themeName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectWallpaper(Ljava/io/File;Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1017
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView$2;->val$themeName:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Lorg/telegram/ui/ActionBar/Theme;->setThemeWallpaper(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/io/File;)V

    .line 1018
    return-void
.end method

.method public needOpenColorPicker()V
    .registers 5

    .prologue
    .line 1022
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$2;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView;->currentThemeDesription:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeEditorView;->access$200(Lorg/telegram/ui/Components/ThemeEditorView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_32

    .line 1023
    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$2;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView;->currentThemeDesription:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeEditorView;->access$200(Lorg/telegram/ui/Components/ThemeEditorView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1024
    .local v1, "description":Lorg/telegram/ui/ActionBar/ThemeDescription;
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->startEditing()V

    .line 1025
    if-nez v0, :cond_2f

    .line 1026
    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$2;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView;->editorAlert:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;
    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2400(Lorg/telegram/ui/Components/ThemeEditorView;)Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    move-result-object v2

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->colorPicker:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;
    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$900(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;

    move-result-object v2

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getCurrentColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert$ColorPicker;->setColor(I)V

    .line 1022
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1029
    .end local v1    # "description":Lorg/telegram/ui/ActionBar/ThemeDescription;
    :cond_32
    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView$2;->this$0:Lorg/telegram/ui/Components/ThemeEditorView;

    # getter for: Lorg/telegram/ui/Components/ThemeEditorView;->editorAlert:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;
    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeEditorView;->access$2400(Lorg/telegram/ui/Components/ThemeEditorView;)Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    move-result-object v2

    const/4 v3, 0x1

    # invokes: Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->setColorPickerVisible(Z)V
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;->access$1700(Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;Z)V

    .line 1030
    return-void
.end method
