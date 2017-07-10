.class final Lorg/telegram/ui/ActionBar/Theme$6;
.super Ljava/lang/Object;
.source "Theme.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/Theme;->loadWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 2829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 2832
    # getter for: Lorg/telegram/ui/ActionBar/Theme;->wallpaperSync:Ljava/lang/Object;
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$200()Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    .line 2833
    :try_start_5
    sget-object v14, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v16, "mainconfig"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 2834
    .local v8, "preferences":Landroid/content/SharedPreferences;
    const-string v14, "overrideThemeWallpaper"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v8, v14, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 2835
    .local v7, "overrideTheme":Z
    if-nez v7, :cond_41

    .line 2836
    # getter for: Lorg/telegram/ui/ActionBar/Theme;->currentColors:Ljava/util/HashMap;
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$300()Ljava/util/HashMap;

    move-result-object v14

    const-string v16, "chat_wallpaper"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2837
    .local v2, "backgroundColor":Ljava/lang/Integer;
    if-eqz v2, :cond_b2

    .line 2838
    new-instance v14, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v14, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    # setter for: Lorg/telegram/ui/ActionBar/Theme;->wallpaper:Landroid/graphics/drawable/Drawable;
    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->access$402(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 2839
    const/4 v14, 0x1

    # setter for: Lorg/telegram/ui/ActionBar/Theme;->isCustomTheme:Z
    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->access$502(Z)Z

    .line 2870
    .end local v2    # "backgroundColor":Ljava/lang/Integer;
    :cond_41
    :goto_41
    # getter for: Lorg/telegram/ui/ActionBar/Theme;->wallpaper:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$400()Landroid/graphics/drawable/Drawable;
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_116

    move-result-object v14

    if-nez v14, :cond_9b

    .line 2871
    const/4 v10, 0x0

    .line 2873
    .local v10, "selectedColor":I
    :try_start_48
    sget-object v14, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v16, "mainconfig"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 2874
    const-string v14, "selectedBackground"

    const v16, 0xf4241

    move/from16 v0, v16

    invoke-interface {v8, v14, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 2875
    .local v9, "selectedBackground":I
    const-string v14, "selectedColor"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v8, v14, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 2876
    if-nez v10, :cond_88

    .line 2877
    const v14, 0xf4241

    if-ne v9, v14, :cond_142

    .line 2878
    sget-object v14, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v16, 0x7f020068

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    # setter for: Lorg/telegram/ui/ActionBar/Theme;->wallpaper:Landroid/graphics/drawable/Drawable;
    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->access$402(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 2879
    const/4 v14, 0x0

    # setter for: Lorg/telegram/ui/ActionBar/Theme;->isCustomTheme:Z
    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->access$502(Z)Z
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_88} :catch_166
    .catchall {:try_start_48 .. :try_end_88} :catchall_116

    .line 2894
    .end local v9    # "selectedBackground":I
    :cond_88
    :goto_88
    :try_start_88
    # getter for: Lorg/telegram/ui/ActionBar/Theme;->wallpaper:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$400()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-nez v14, :cond_9b

    .line 2895
    if-nez v10, :cond_93

    .line 2896
    const v10, -0x291b11

    .line 2898
    :cond_93
    new-instance v14, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v14, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    # setter for: Lorg/telegram/ui/ActionBar/Theme;->wallpaper:Landroid/graphics/drawable/Drawable;
    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->access$402(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 2901
    .end local v10    # "selectedColor":I
    :cond_9b
    # getter for: Lorg/telegram/ui/ActionBar/Theme;->wallpaper:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$400()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    const/16 v16, 0x1

    move/from16 v0, v16

    # invokes: Lorg/telegram/ui/ActionBar/Theme;->calcBackgroundColor(Landroid/graphics/drawable/Drawable;I)V
    invoke-static {v14, v0}, Lorg/telegram/ui/ActionBar/Theme;->access$900(Landroid/graphics/drawable/Drawable;I)V

    .line 2902
    new-instance v14, Lorg/telegram/ui/ActionBar/Theme$6$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lorg/telegram/ui/ActionBar/Theme$6$1;-><init>(Lorg/telegram/ui/ActionBar/Theme$6;)V

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2909
    monitor-exit v15

    .line 2910
    return-void

    .line 2840
    .restart local v2    # "backgroundColor":Ljava/lang/Integer;
    :cond_b2
    # getter for: Lorg/telegram/ui/ActionBar/Theme;->themedWallpaperFileOffset:I
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$600()I

    move-result v14

    if-lez v14, :cond_41

    # getter for: Lorg/telegram/ui/ActionBar/Theme;->currentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$700()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v14

    iget-object v14, v14, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    if-nez v14, :cond_c8

    # getter for: Lorg/telegram/ui/ActionBar/Theme;->currentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$700()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v14

    iget-object v14, v14, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;
    :try_end_c6
    .catchall {:try_start_88 .. :try_end_c6} :catchall_116

    if-eqz v14, :cond_41

    .line 2841
    :cond_c8
    const/4 v11, 0x0

    .line 2843
    .local v11, "stream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 2845
    .local v4, "currentPosition":I
    :try_start_ca
    # getter for: Lorg/telegram/ui/ActionBar/Theme;->currentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$700()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v14

    iget-object v14, v14, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    if-eqz v14, :cond_119

    .line 2846
    # getter for: Lorg/telegram/ui/ActionBar/Theme;->currentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$700()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v14

    iget-object v14, v14, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->getAssetFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 2850
    .local v6, "file":Ljava/io/File;
    :goto_dc
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_e1
    .catch Ljava/lang/Throwable; {:try_start_ca .. :try_end_e1} :catch_125
    .catchall {:try_start_ca .. :try_end_e1} :catchall_136

    .line 2851
    .end local v11    # "stream":Ljava/io/FileInputStream;
    .local v12, "stream":Ljava/io/FileInputStream;
    :try_start_e1
    invoke-virtual {v12}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v14

    # getter for: Lorg/telegram/ui/ActionBar/Theme;->themedWallpaperFileOffset:I
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$600()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 2852
    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2853
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_109

    .line 2854
    new-instance v14, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v14, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    # setter for: Lorg/telegram/ui/ActionBar/Theme;->wallpaper:Landroid/graphics/drawable/Drawable;
    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->access$402(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    # setter for: Lorg/telegram/ui/ActionBar/Theme;->themedWallpaper:Landroid/graphics/drawable/Drawable;
    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->access$802(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 2855
    const/4 v14, 0x1

    # setter for: Lorg/telegram/ui/ActionBar/Theme;->isCustomTheme:Z
    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->access$502(Z)Z
    :try_end_109
    .catch Ljava/lang/Throwable; {:try_start_e1 .. :try_end_109} :catch_184
    .catchall {:try_start_e1 .. :try_end_109} :catchall_181

    .line 2861
    :cond_109
    if-eqz v12, :cond_41

    .line 2862
    :try_start_10b
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_10e} :catch_110
    .catchall {:try_start_10b .. :try_end_10e} :catchall_116

    goto/16 :goto_41

    .line 2864
    :catch_110
    move-exception v5

    .line 2865
    .local v5, "e":Ljava/lang/Exception;
    :try_start_111
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 2909
    .end local v2    # "backgroundColor":Ljava/lang/Integer;
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "currentPosition":I
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "overrideTheme":Z
    .end local v8    # "preferences":Landroid/content/SharedPreferences;
    .end local v12    # "stream":Ljava/io/FileInputStream;
    :catchall_116
    move-exception v14

    monitor-exit v15
    :try_end_118
    .catchall {:try_start_111 .. :try_end_118} :catchall_116

    throw v14

    .line 2848
    .restart local v2    # "backgroundColor":Ljava/lang/Integer;
    .restart local v4    # "currentPosition":I
    .restart local v7    # "overrideTheme":Z
    .restart local v8    # "preferences":Landroid/content/SharedPreferences;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    :cond_119
    :try_start_119
    new-instance v6, Ljava/io/File;

    # getter for: Lorg/telegram/ui/ActionBar/Theme;->currentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$700()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v14

    iget-object v14, v14, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    invoke-direct {v6, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_124
    .catch Ljava/lang/Throwable; {:try_start_119 .. :try_end_124} :catch_125
    .catchall {:try_start_119 .. :try_end_124} :catchall_136

    .restart local v6    # "file":Ljava/io/File;
    goto :goto_dc

    .line 2857
    .end local v6    # "file":Ljava/io/File;
    :catch_125
    move-exception v5

    .line 2858
    .local v5, "e":Ljava/lang/Throwable;
    :goto_126
    :try_start_126
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_129
    .catchall {:try_start_126 .. :try_end_129} :catchall_136

    .line 2861
    if-eqz v11, :cond_41

    .line 2862
    :try_start_12b
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_12e} :catch_130
    .catchall {:try_start_12b .. :try_end_12e} :catchall_116

    goto/16 :goto_41

    .line 2864
    :catch_130
    move-exception v5

    .line 2865
    .local v5, "e":Ljava/lang/Exception;
    :try_start_131
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_134
    .catchall {:try_start_131 .. :try_end_134} :catchall_116

    goto/16 :goto_41

    .line 2860
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_136
    move-exception v14

    .line 2861
    :goto_137
    if-eqz v11, :cond_13c

    .line 2862
    :try_start_139
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_13c} :catch_13d
    .catchall {:try_start_139 .. :try_end_13c} :catchall_116

    .line 2866
    :cond_13c
    :goto_13c
    :try_start_13c
    throw v14

    .line 2864
    :catch_13d
    move-exception v5

    .line 2865
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_141
    .catchall {:try_start_13c .. :try_end_141} :catchall_116

    goto :goto_13c

    .line 2881
    .end local v2    # "backgroundColor":Ljava/lang/Integer;
    .end local v4    # "currentPosition":I
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v11    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "selectedBackground":I
    .restart local v10    # "selectedColor":I
    :cond_142
    :try_start_142
    new-instance v13, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v14

    const-string v16, "wallpaper.jpg"

    move-object/from16 v0, v16

    invoke-direct {v13, v14, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2882
    .local v13, "toFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_169

    .line 2883
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    # setter for: Lorg/telegram/ui/ActionBar/Theme;->wallpaper:Landroid/graphics/drawable/Drawable;
    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->access$402(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 2884
    const/4 v14, 0x1

    # setter for: Lorg/telegram/ui/ActionBar/Theme;->isCustomTheme:Z
    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->access$502(Z)Z

    goto/16 :goto_88

    .line 2891
    .end local v9    # "selectedBackground":I
    .end local v13    # "toFile":Ljava/io/File;
    :catch_166
    move-exception v14

    goto/16 :goto_88

    .line 2886
    .restart local v9    # "selectedBackground":I
    .restart local v13    # "toFile":Ljava/io/File;
    :cond_169
    sget-object v14, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v16, 0x7f020068

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    # setter for: Lorg/telegram/ui/ActionBar/Theme;->wallpaper:Landroid/graphics/drawable/Drawable;
    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->access$402(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 2887
    const/4 v14, 0x0

    # setter for: Lorg/telegram/ui/ActionBar/Theme;->isCustomTheme:Z
    invoke-static {v14}, Lorg/telegram/ui/ActionBar/Theme;->access$502(Z)Z
    :try_end_17f
    .catch Ljava/lang/Throwable; {:try_start_142 .. :try_end_17f} :catch_166
    .catchall {:try_start_142 .. :try_end_17f} :catchall_116

    goto/16 :goto_88

    .line 2860
    .end local v9    # "selectedBackground":I
    .end local v10    # "selectedColor":I
    .end local v13    # "toFile":Ljava/io/File;
    .restart local v2    # "backgroundColor":Ljava/lang/Integer;
    .restart local v4    # "currentPosition":I
    .restart local v6    # "file":Ljava/io/File;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    :catchall_181
    move-exception v14

    move-object v11, v12

    .end local v12    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    goto :goto_137

    .line 2857
    .end local v11    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    :catch_184
    move-exception v5

    move-object v11, v12

    .end local v12    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "stream":Ljava/io/FileInputStream;
    goto :goto_126
.end method
