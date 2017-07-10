.class final Lorg/telegram/ui/ActionBar/Theme$5;
.super Ljava/lang/Object;
.source "Theme.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/Theme;->sortThemes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 1762
    check-cast p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    check-cast p2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/Theme$5;->compare(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)I
    .registers 5
    .param p1, "o1"    # Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    .param p2, "o2"    # Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .prologue
    .line 1765
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    if-nez v0, :cond_a

    iget-object v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 1766
    const/4 v0, -0x1

    .line 1770
    :goto_9
    return v0

    .line 1767
    :cond_a
    iget-object v0, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    if-nez v0, :cond_14

    iget-object v0, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    if-nez v0, :cond_14

    .line 1768
    const/4 v0, 0x1

    goto :goto_9

    .line 1770
    :cond_14
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_9
.end method
