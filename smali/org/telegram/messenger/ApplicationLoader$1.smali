.class final Lorg/telegram/messenger/ApplicationLoader$1;
.super Ljava/lang/Object;
.source "ApplicationLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ApplicationLoader;->loadWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const v8, 0xf4241

    .line 139
    # getter for: Lorg/telegram/messenger/ApplicationLoader;->sync:Ljava/lang/Object;
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->access$000()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 140
    const/4 v2, 0x0

    .line 142
    .local v2, "selectedColor":I
    :try_start_9
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "mainconfig"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 143
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v4, "selectedBackground"

    const v6, 0xf4241

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 144
    .local v1, "selectedBackground":I
    const-string v4, "selectedColor"

    const/4 v6, 0x0

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 145
    const-string v4, "serviceMessageColor"

    const/4 v6, 0x0

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    # setter for: Lorg/telegram/messenger/ApplicationLoader;->serviceMessageColor:I
    invoke-static {v4}, Lorg/telegram/messenger/ApplicationLoader;->access$102(I)I

    .line 146
    const-string v4, "serviceSelectedMessageColor"

    const/4 v6, 0x0

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    # setter for: Lorg/telegram/messenger/ApplicationLoader;->serviceSelectedMessageColor:I
    invoke-static {v4}, Lorg/telegram/messenger/ApplicationLoader;->access$202(I)I

    .line 147
    if-nez v2, :cond_4e

    .line 148
    if-ne v1, v8, :cond_74

    .line 149
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f020068

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    # setter for: Lorg/telegram/messenger/ApplicationLoader;->cachedWallpaper:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lorg/telegram/messenger/ApplicationLoader;->access$302(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 150
    const/4 v4, 0x0

    # setter for: Lorg/telegram/messenger/ApplicationLoader;->isCustomTheme:Z
    invoke-static {v4}, Lorg/telegram/messenger/ApplicationLoader;->access$402(Z)Z
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_4e} :catch_95
    .catchall {:try_start_9 .. :try_end_4e} :catchall_ac

    .line 165
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    .end local v1    # "selectedBackground":I
    :cond_4e
    :goto_4e
    :try_start_4e
    # getter for: Lorg/telegram/messenger/ApplicationLoader;->cachedWallpaper:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->access$300()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_61

    .line 166
    if-nez v2, :cond_59

    .line 167
    const v2, -0x291b11

    .line 169
    :cond_59
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    # setter for: Lorg/telegram/messenger/ApplicationLoader;->cachedWallpaper:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lorg/telegram/messenger/ApplicationLoader;->access$302(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 171
    :cond_61
    # getter for: Lorg/telegram/messenger/ApplicationLoader;->serviceMessageColor:I
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->access$100()I

    move-result v4

    if-nez v4, :cond_6a

    .line 172
    # invokes: Lorg/telegram/messenger/ApplicationLoader;->calcBackgroundColor()V
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->access$500()V

    .line 174
    :cond_6a
    new-instance v4, Lorg/telegram/messenger/ApplicationLoader$1$1;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/ApplicationLoader$1$1;-><init>(Lorg/telegram/messenger/ApplicationLoader$1;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 180
    monitor-exit v5
    :try_end_73
    .catchall {:try_start_4e .. :try_end_73} :catchall_ac

    .line 181
    return-void

    .line 152
    .restart local v0    # "preferences":Landroid/content/SharedPreferences;
    .restart local v1    # "selectedBackground":I
    :cond_74
    :try_start_74
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v4

    const-string v6, "wallpaper.jpg"

    invoke-direct {v3, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 153
    .local v3, "toFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_97

    .line 154
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    # setter for: Lorg/telegram/messenger/ApplicationLoader;->cachedWallpaper:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lorg/telegram/messenger/ApplicationLoader;->access$302(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 155
    const/4 v4, 0x1

    # setter for: Lorg/telegram/messenger/ApplicationLoader;->isCustomTheme:Z
    invoke-static {v4}, Lorg/telegram/messenger/ApplicationLoader;->access$402(Z)Z

    goto :goto_4e

    .line 162
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    .end local v1    # "selectedBackground":I
    .end local v3    # "toFile":Ljava/io/File;
    :catch_95
    move-exception v4

    goto :goto_4e

    .line 157
    .restart local v0    # "preferences":Landroid/content/SharedPreferences;
    .restart local v1    # "selectedBackground":I
    .restart local v3    # "toFile":Ljava/io/File;
    :cond_97
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f020068

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    # setter for: Lorg/telegram/messenger/ApplicationLoader;->cachedWallpaper:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lorg/telegram/messenger/ApplicationLoader;->access$302(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 158
    const/4 v4, 0x0

    # setter for: Lorg/telegram/messenger/ApplicationLoader;->isCustomTheme:Z
    invoke-static {v4}, Lorg/telegram/messenger/ApplicationLoader;->access$402(Z)Z
    :try_end_ab
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_ab} :catch_95
    .catchall {:try_start_74 .. :try_end_ab} :catchall_ac

    goto :goto_4e

    .line 180
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    .end local v1    # "selectedBackground":I
    .end local v3    # "toFile":Ljava/io/File;
    :catchall_ac
    move-exception v4

    :try_start_ad
    monitor-exit v5
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    throw v4
.end method
