.class public Lorg/telegram/ui/Membergram/util/BlurUtil;
.super Ljava/lang/Object;
.source "BlurUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fastblur(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .registers 48
    .param p0, "sentBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scale"    # F
    .param p2, "radius"    # I

    .prologue
    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v38

    .line 13
    .local v38, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v22

    .line 14
    .local v22, "height":I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    move/from16 v2, v22

    invoke-static {v0, v1, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 16
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 18
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x1

    move/from16 v0, p2

    if-ge v0, v5, :cond_33

    .line 19
    const/4 v3, 0x0

    .line 215
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :goto_32
    return-object v3

    .line 22
    .restart local v3    # "bitmap":Landroid/graphics/Bitmap;
    :cond_33
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 23
    .local v6, "w":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 25
    .local v10, "h":I
    mul-int v5, v6, v10

    new-array v4, v5, [I

    .line 26
    .local v4, "pix":[I
    const-string v5, "pix"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, v6

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 29
    add-int/lit8 v39, v6, -0x1

    .line 30
    .local v39, "wm":I
    add-int/lit8 v23, v10, -0x1

    .line 31
    .local v23, "hm":I
    mul-int v37, v6, v10

    .line 32
    .local v37, "wh":I
    add-int v5, p2, p2

    add-int/lit8 v15, v5, 0x1

    .line 34
    .local v15, "div":I
    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v26, v0

    .line 35
    .local v26, "r":[I
    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 36
    .local v18, "g":[I
    move/from16 v0, v37

    new-array v11, v0, [I

    .line 38
    .local v11, "b":[I
    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    new-array v0, v5, [I

    move-object/from16 v36, v0

    .line 40
    .local v36, "vmin":[I
    add-int/lit8 v5, v15, 0x1

    shr-int/lit8 v16, v5, 0x1

    .line 41
    .local v16, "divsum":I
    mul-int v16, v16, v16

    .line 42
    move/from16 v0, v16

    mul-int/lit16 v5, v0, 0x100

    new-array v0, v5, [I

    move-object/from16 v17, v0

    .line 43
    .local v17, "dv":[I
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_9f
    move/from16 v0, v16

    mul-int/lit16 v5, v0, 0x100

    move/from16 v0, v24

    if-ge v0, v5, :cond_ae

    .line 44
    div-int v5, v24, v16

    aput v5, v17, v24

    .line 43
    add-int/lit8 v24, v24, 0x1

    goto :goto_9f

    .line 47
    :cond_ae
    const/16 v42, 0x0

    .local v42, "yi":I
    move/from16 v44, v42

    .line 49
    .local v44, "yw":I
    const/4 v5, 0x3

    filled-new-array {v15, v5}, [I

    move-result-object v5

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [[I

    .line 54
    .local v33, "stack":[[I
    add-int/lit8 v27, p2, 0x1

    .line 58
    .local v27, "r1":I
    const/16 v41, 0x0

    .local v41, "y":I
    :goto_c3
    move/from16 v0, v41

    if-ge v0, v10, :cond_1ec

    .line 59
    const/4 v14, 0x0

    .local v14, "bsum":I
    move/from16 v21, v14

    .local v21, "gsum":I
    move/from16 v31, v14

    .local v31, "rsum":I
    move v13, v14

    .local v13, "boutsum":I
    move/from16 v20, v14

    .local v20, "goutsum":I
    move/from16 v30, v14

    .local v30, "routsum":I
    move v12, v14

    .local v12, "binsum":I
    move/from16 v19, v14

    .local v19, "ginsum":I
    move/from16 v29, v14

    .line 60
    .local v29, "rinsum":I
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v24, v0

    :goto_db
    move/from16 v0, v24

    move/from16 v1, p2

    if-gt v0, v1, :cond_14c

    .line 61
    const/4 v5, 0x0

    move/from16 v0, v24

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v0, v39

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v5, v5, v42

    aget v25, v4, v5

    .line 62
    .local v25, "p":I
    add-int v5, v24, p2

    aget-object v32, v33, v5

    .line 63
    .local v32, "sir":[I
    const/4 v5, 0x0

    const/high16 v7, 0xff0000

    and-int v7, v7, v25

    shr-int/lit8 v7, v7, 0x10

    aput v7, v32, v5

    .line 64
    const/4 v5, 0x1

    const v7, 0xff00

    and-int v7, v7, v25

    shr-int/lit8 v7, v7, 0x8

    aput v7, v32, v5

    .line 65
    const/4 v5, 0x2

    move/from16 v0, v25

    and-int/lit16 v7, v0, 0xff

    aput v7, v32, v5

    .line 66
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sub-int v28, v27, v5

    .line 67
    .local v28, "rbs":I
    const/4 v5, 0x0

    aget v5, v32, v5

    mul-int v5, v5, v28

    add-int v31, v31, v5

    .line 68
    const/4 v5, 0x1

    aget v5, v32, v5

    mul-int v5, v5, v28

    add-int v21, v21, v5

    .line 69
    const/4 v5, 0x2

    aget v5, v32, v5

    mul-int v5, v5, v28

    add-int/2addr v14, v5

    .line 70
    if-lez v24, :cond_13d

    .line 71
    const/4 v5, 0x0

    aget v5, v32, v5

    add-int v29, v29, v5

    .line 72
    const/4 v5, 0x1

    aget v5, v32, v5

    add-int v19, v19, v5

    .line 73
    const/4 v5, 0x2

    aget v5, v32, v5

    add-int/2addr v12, v5

    .line 60
    :goto_13a
    add-int/lit8 v24, v24, 0x1

    goto :goto_db

    .line 75
    :cond_13d
    const/4 v5, 0x0

    aget v5, v32, v5

    add-int v30, v30, v5

    .line 76
    const/4 v5, 0x1

    aget v5, v32, v5

    add-int v20, v20, v5

    .line 77
    const/4 v5, 0x2

    aget v5, v32, v5

    add-int/2addr v13, v5

    goto :goto_13a

    .line 80
    .end local v25    # "p":I
    .end local v28    # "rbs":I
    .end local v32    # "sir":[I
    :cond_14c
    move/from16 v34, p2

    .line 82
    .local v34, "stackpointer":I
    const/16 v40, 0x0

    .local v40, "x":I
    :goto_150
    move/from16 v0, v40

    if-ge v0, v6, :cond_1e6

    .line 84
    aget v5, v17, v31

    aput v5, v26, v42

    .line 85
    aget v5, v17, v21

    aput v5, v18, v42

    .line 86
    aget v5, v17, v14

    aput v5, v11, v42

    .line 88
    sub-int v31, v31, v30

    .line 89
    sub-int v21, v21, v20

    .line 90
    sub-int/2addr v14, v13

    .line 92
    sub-int v5, v34, p2

    add-int v35, v5, v15

    .line 93
    .local v35, "stackstart":I
    rem-int v5, v35, v15

    aget-object v32, v33, v5

    .line 95
    .restart local v32    # "sir":[I
    const/4 v5, 0x0

    aget v5, v32, v5

    sub-int v30, v30, v5

    .line 96
    const/4 v5, 0x1

    aget v5, v32, v5

    sub-int v20, v20, v5

    .line 97
    const/4 v5, 0x2

    aget v5, v32, v5

    sub-int/2addr v13, v5

    .line 99
    if-nez v41, :cond_189

    .line 100
    add-int v5, v40, p2

    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v39

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    aput v5, v36, v40

    .line 102
    :cond_189
    aget v5, v36, v40

    add-int v5, v5, v44

    aget v25, v4, v5

    .line 104
    .restart local v25    # "p":I
    const/4 v5, 0x0

    const/high16 v7, 0xff0000

    and-int v7, v7, v25

    shr-int/lit8 v7, v7, 0x10

    aput v7, v32, v5

    .line 105
    const/4 v5, 0x1

    const v7, 0xff00

    and-int v7, v7, v25

    shr-int/lit8 v7, v7, 0x8

    aput v7, v32, v5

    .line 106
    const/4 v5, 0x2

    move/from16 v0, v25

    and-int/lit16 v7, v0, 0xff

    aput v7, v32, v5

    .line 108
    const/4 v5, 0x0

    aget v5, v32, v5

    add-int v29, v29, v5

    .line 109
    const/4 v5, 0x1

    aget v5, v32, v5

    add-int v19, v19, v5

    .line 110
    const/4 v5, 0x2

    aget v5, v32, v5

    add-int/2addr v12, v5

    .line 112
    add-int v31, v31, v29

    .line 113
    add-int v21, v21, v19

    .line 114
    add-int/2addr v14, v12

    .line 116
    add-int/lit8 v5, v34, 0x1

    rem-int v34, v5, v15

    .line 117
    rem-int v5, v34, v15

    aget-object v32, v33, v5

    .line 119
    const/4 v5, 0x0

    aget v5, v32, v5

    add-int v30, v30, v5

    .line 120
    const/4 v5, 0x1

    aget v5, v32, v5

    add-int v20, v20, v5

    .line 121
    const/4 v5, 0x2

    aget v5, v32, v5

    add-int/2addr v13, v5

    .line 123
    const/4 v5, 0x0

    aget v5, v32, v5

    sub-int v29, v29, v5

    .line 124
    const/4 v5, 0x1

    aget v5, v32, v5

    sub-int v19, v19, v5

    .line 125
    const/4 v5, 0x2

    aget v5, v32, v5

    sub-int/2addr v12, v5

    .line 127
    add-int/lit8 v42, v42, 0x1

    .line 82
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_150

    .line 129
    .end local v25    # "p":I
    .end local v32    # "sir":[I
    .end local v35    # "stackstart":I
    :cond_1e6
    add-int v44, v44, v6

    .line 58
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_c3

    .line 131
    .end local v12    # "binsum":I
    .end local v13    # "boutsum":I
    .end local v14    # "bsum":I
    .end local v19    # "ginsum":I
    .end local v20    # "goutsum":I
    .end local v21    # "gsum":I
    .end local v29    # "rinsum":I
    .end local v30    # "routsum":I
    .end local v31    # "rsum":I
    .end local v34    # "stackpointer":I
    .end local v40    # "x":I
    :cond_1ec
    const/16 v40, 0x0

    .restart local v40    # "x":I
    :goto_1ee
    move/from16 v0, v40

    if-ge v0, v6, :cond_306

    .line 132
    const/4 v14, 0x0

    .restart local v14    # "bsum":I
    move/from16 v21, v14

    .restart local v21    # "gsum":I
    move/from16 v31, v14

    .restart local v31    # "rsum":I
    move v13, v14

    .restart local v13    # "boutsum":I
    move/from16 v20, v14

    .restart local v20    # "goutsum":I
    move/from16 v30, v14

    .restart local v30    # "routsum":I
    move v12, v14

    .restart local v12    # "binsum":I
    move/from16 v19, v14

    .restart local v19    # "ginsum":I
    move/from16 v29, v14

    .line 133
    .restart local v29    # "rinsum":I
    move/from16 v0, p2

    neg-int v5, v0

    mul-int v43, v5, v6

    .line 134
    .local v43, "yp":I
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v24, v0

    :goto_20b
    move/from16 v0, v24

    move/from16 v1, p2

    if-gt v0, v1, :cond_26e

    .line 135
    const/4 v5, 0x0

    move/from16 v0, v43

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int v42, v5, v40

    .line 137
    add-int v5, v24, p2

    aget-object v32, v33, v5

    .line 139
    .restart local v32    # "sir":[I
    const/4 v5, 0x0

    aget v7, v26, v42

    aput v7, v32, v5

    .line 140
    const/4 v5, 0x1

    aget v7, v18, v42

    aput v7, v32, v5

    .line 141
    const/4 v5, 0x2

    aget v7, v11, v42

    aput v7, v32, v5

    .line 143
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sub-int v28, v27, v5

    .line 145
    .restart local v28    # "rbs":I
    aget v5, v26, v42

    mul-int v5, v5, v28

    add-int v31, v31, v5

    .line 146
    aget v5, v18, v42

    mul-int v5, v5, v28

    add-int v21, v21, v5

    .line 147
    aget v5, v11, v42

    mul-int v5, v5, v28

    add-int/2addr v14, v5

    .line 149
    if-lez v24, :cond_25f

    .line 150
    const/4 v5, 0x0

    aget v5, v32, v5

    add-int v29, v29, v5

    .line 151
    const/4 v5, 0x1

    aget v5, v32, v5

    add-int v19, v19, v5

    .line 152
    const/4 v5, 0x2

    aget v5, v32, v5

    add-int/2addr v12, v5

    .line 159
    :goto_254
    move/from16 v0, v24

    move/from16 v1, v23

    if-ge v0, v1, :cond_25c

    .line 160
    add-int v43, v43, v6

    .line 134
    :cond_25c
    add-int/lit8 v24, v24, 0x1

    goto :goto_20b

    .line 154
    :cond_25f
    const/4 v5, 0x0

    aget v5, v32, v5

    add-int v30, v30, v5

    .line 155
    const/4 v5, 0x1

    aget v5, v32, v5

    add-int v20, v20, v5

    .line 156
    const/4 v5, 0x2

    aget v5, v32, v5

    add-int/2addr v13, v5

    goto :goto_254

    .line 163
    .end local v28    # "rbs":I
    .end local v32    # "sir":[I
    :cond_26e
    move/from16 v42, v40

    .line 164
    move/from16 v34, p2

    .line 165
    .restart local v34    # "stackpointer":I
    const/16 v41, 0x0

    :goto_274
    move/from16 v0, v41

    if-ge v0, v10, :cond_302

    .line 167
    const/high16 v5, -0x1000000

    aget v7, v4, v42

    and-int/2addr v5, v7

    aget v7, v17, v31

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v5, v7

    aget v7, v17, v21

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    aget v7, v17, v14

    or-int/2addr v5, v7

    aput v5, v4, v42

    .line 169
    sub-int v31, v31, v30

    .line 170
    sub-int v21, v21, v20

    .line 171
    sub-int/2addr v14, v13

    .line 173
    sub-int v5, v34, p2

    add-int v35, v5, v15

    .line 174
    .restart local v35    # "stackstart":I
    rem-int v5, v35, v15

    aget-object v32, v33, v5

    .line 176
    .restart local v32    # "sir":[I
    const/4 v5, 0x0

    aget v5, v32, v5

    sub-int v30, v30, v5

    .line 177
    const/4 v5, 0x1

    aget v5, v32, v5

    sub-int v20, v20, v5

    .line 178
    const/4 v5, 0x2

    aget v5, v32, v5

    sub-int/2addr v13, v5

    .line 180
    if-nez v40, :cond_2b4

    .line 181
    add-int v5, v41, v27

    move/from16 v0, v23

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int/2addr v5, v6

    aput v5, v36, v41

    .line 183
    :cond_2b4
    aget v5, v36, v41

    add-int v25, v40, v5

    .line 185
    .restart local v25    # "p":I
    const/4 v5, 0x0

    aget v7, v26, v25

    aput v7, v32, v5

    .line 186
    const/4 v5, 0x1

    aget v7, v18, v25

    aput v7, v32, v5

    .line 187
    const/4 v5, 0x2

    aget v7, v11, v25

    aput v7, v32, v5

    .line 189
    const/4 v5, 0x0

    aget v5, v32, v5

    add-int v29, v29, v5

    .line 190
    const/4 v5, 0x1

    aget v5, v32, v5

    add-int v19, v19, v5

    .line 191
    const/4 v5, 0x2

    aget v5, v32, v5

    add-int/2addr v12, v5

    .line 193
    add-int v31, v31, v29

    .line 194
    add-int v21, v21, v19

    .line 195
    add-int/2addr v14, v12

    .line 197
    add-int/lit8 v5, v34, 0x1

    rem-int v34, v5, v15

    .line 198
    aget-object v32, v33, v34

    .line 200
    const/4 v5, 0x0

    aget v5, v32, v5

    add-int v30, v30, v5

    .line 201
    const/4 v5, 0x1

    aget v5, v32, v5

    add-int v20, v20, v5

    .line 202
    const/4 v5, 0x2

    aget v5, v32, v5

    add-int/2addr v13, v5

    .line 204
    const/4 v5, 0x0

    aget v5, v32, v5

    sub-int v29, v29, v5

    .line 205
    const/4 v5, 0x1

    aget v5, v32, v5

    sub-int v19, v19, v5

    .line 206
    const/4 v5, 0x2

    aget v5, v32, v5

    sub-int/2addr v12, v5

    .line 208
    add-int v42, v42, v6

    .line 165
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_274

    .line 131
    .end local v25    # "p":I
    .end local v32    # "sir":[I
    .end local v35    # "stackstart":I
    :cond_302
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_1ee

    .line 212
    .end local v12    # "binsum":I
    .end local v13    # "boutsum":I
    .end local v14    # "bsum":I
    .end local v19    # "ginsum":I
    .end local v20    # "goutsum":I
    .end local v21    # "gsum":I
    .end local v29    # "rinsum":I
    .end local v30    # "routsum":I
    .end local v31    # "rsum":I
    .end local v34    # "stackpointer":I
    .end local v43    # "yp":I
    :cond_306
    const-string v5, "pix"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, v6

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto/16 :goto_32
.end method
