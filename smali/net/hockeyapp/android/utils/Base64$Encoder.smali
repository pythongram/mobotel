.class Lnet/hockeyapp/android/utils/Base64$Encoder;
.super Lnet/hockeyapp/android/utils/Base64$Coder;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/utils/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Encoder"
.end annotation


# static fields
.field private static final ENCODE:[B

.field private static final ENCODE_WEBSAFE:[B

.field public static final LINE_GROUPS:I = 0x13


# instance fields
.field private final alphabet:[B

.field private count:I

.field public final do_cr:Z

.field public final do_newline:Z

.field public final do_padding:Z

.field private final tail:[B

.field tailLen:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x40

    .line 548
    new-array v0, v1, [B

    fill-array-data v0, :array_12

    sput-object v0, Lnet/hockeyapp/android/utils/Base64$Encoder;->ENCODE:[B

    .line 559
    new-array v0, v1, [B

    fill-array-data v0, :array_36

    sput-object v0, Lnet/hockeyapp/android/utils/Base64$Encoder;->ENCODE_WEBSAFE:[B

    return-void

    .line 548
    nop

    :array_12
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 559
    :array_36
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .registers 6
    .param p1, "flags"    # I
    .param p2, "output"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 575
    invoke-direct {p0}, Lnet/hockeyapp/android/utils/Base64$Coder;-><init>()V

    .line 576
    iput-object p2, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->output:[B

    .line 578
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_33

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->do_padding:Z

    .line 579
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_35

    move v0, v1

    :goto_13
    iput-boolean v0, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->do_newline:Z

    .line 580
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_37

    :goto_19
    iput-boolean v1, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->do_cr:Z

    .line 581
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_39

    sget-object v0, Lnet/hockeyapp/android/utils/Base64$Encoder;->ENCODE:[B

    :goto_21
    iput-object v0, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->alphabet:[B

    .line 583
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->tail:[B

    .line 584
    iput v2, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->tailLen:I

    .line 586
    iget-boolean v0, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->do_newline:Z

    if-eqz v0, :cond_3c

    const/16 v0, 0x13

    :goto_30
    iput v0, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->count:I

    .line 587
    return-void

    :cond_33
    move v0, v2

    .line 578
    goto :goto_c

    :cond_35
    move v0, v2

    .line 579
    goto :goto_13

    :cond_37
    move v1, v2

    .line 580
    goto :goto_19

    .line 581
    :cond_39
    sget-object v0, Lnet/hockeyapp/android/utils/Base64$Encoder;->ENCODE_WEBSAFE:[B

    goto :goto_21

    .line 586
    :cond_3c
    const/4 v0, -0x1

    goto :goto_30
.end method


# virtual methods
.method public maxOutputSize(I)I
    .registers 3
    .param p1, "len"    # I

    .prologue
    .line 594
    mul-int/lit8 v0, p1, 0x8

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public process([BIIZ)Z
    .registers 19
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "finish"    # Z

    .prologue
    .line 599
    iget-object v1, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->alphabet:[B

    .line 600
    .local v1, "alphabet":[B
    iget-object v5, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->output:[B

    .line 601
    .local v5, "output":[B
    const/4 v3, 0x0

    .line 602
    .local v3, "op":I
    iget v2, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->count:I

    .line 604
    .local v2, "count":I
    move/from16 v6, p2

    .line 605
    .local v6, "p":I
    add-int p3, p3, p2

    .line 606
    const/4 v10, -0x1

    .line 612
    .local v10, "v":I
    iget v11, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->tailLen:I

    packed-switch v11, :pswitch_data_24a

    .line 639
    :cond_11
    :goto_11
    :pswitch_11
    const/4 v11, -0x1

    if-eq v10, v11, :cond_245

    .line 640
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "op":I
    .local v4, "op":I
    shr-int/lit8 v11, v10, 0x12

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v3

    .line 641
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "op":I
    .restart local v3    # "op":I
    shr-int/lit8 v11, v10, 0xc

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v4

    .line 642
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "op":I
    .restart local v4    # "op":I
    shr-int/lit8 v11, v10, 0x6

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v3

    .line 643
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "op":I
    .restart local v3    # "op":I
    and-int/lit8 v11, v10, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v4

    .line 644
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_245

    .line 645
    iget-boolean v11, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->do_cr:Z

    if-eqz v11, :cond_49

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "op":I
    .restart local v4    # "op":I
    const/16 v11, 0xd

    aput-byte v11, v5, v3

    move v3, v4

    .line 646
    .end local v4    # "op":I
    .restart local v3    # "op":I
    :cond_49
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "op":I
    .restart local v4    # "op":I
    const/16 v11, 0xa

    aput-byte v11, v5, v3

    .line 647
    const/16 v2, 0x13

    move v7, v6

    .line 656
    .end local v6    # "p":I
    .local v7, "p":I
    :goto_52
    add-int/lit8 v11, v7, 0x3

    move/from16 v0, p3

    if-gt v11, v0, :cond_fc

    .line 657
    aget-byte v11, p1, v7

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    add-int/lit8 v12, v7, 0x1

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    add-int/lit8 v12, v7, 0x2

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    or-int v10, v11, v12

    .line 660
    shr-int/lit8 v11, v10, 0x12

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v4

    .line 661
    add-int/lit8 v11, v4, 0x1

    shr-int/lit8 v12, v10, 0xc

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v5, v11

    .line 662
    add-int/lit8 v11, v4, 0x2

    shr-int/lit8 v12, v10, 0x6

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v5, v11

    .line 663
    add-int/lit8 v11, v4, 0x3

    and-int/lit8 v12, v10, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v5, v11

    .line 664
    add-int/lit8 v6, v7, 0x3

    .line 665
    .end local v7    # "p":I
    .restart local v6    # "p":I
    add-int/lit8 v3, v4, 0x4

    .line 666
    .end local v4    # "op":I
    .restart local v3    # "op":I
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_245

    .line 667
    iget-boolean v11, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->do_cr:Z

    if-eqz v11, :cond_a6

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "op":I
    .restart local v4    # "op":I
    const/16 v11, 0xd

    aput-byte v11, v5, v3

    move v3, v4

    .line 668
    .end local v4    # "op":I
    .restart local v3    # "op":I
    :cond_a6
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "op":I
    .restart local v4    # "op":I
    const/16 v11, 0xa

    aput-byte v11, v5, v3

    .line 669
    const/16 v2, 0x13

    move v7, v6

    .end local v6    # "p":I
    .restart local v7    # "p":I
    goto :goto_52

    .line 618
    .end local v4    # "op":I
    .end local v7    # "p":I
    .restart local v3    # "op":I
    .restart local v6    # "p":I
    :pswitch_b0
    add-int/lit8 v11, v6, 0x2

    move/from16 v0, p3

    if-gt v11, v0, :cond_11

    .line 621
    iget-object v11, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->tail:[B

    const/4 v12, 0x0

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "p":I
    .restart local v7    # "p":I
    aget-byte v12, p1, v6

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "p":I
    .restart local v6    # "p":I
    aget-byte v12, p1, v7

    and-int/lit16 v12, v12, 0xff

    or-int v10, v11, v12

    .line 624
    const/4 v11, 0x0

    iput v11, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->tailLen:I

    goto/16 :goto_11

    .line 629
    :pswitch_d5
    add-int/lit8 v11, v6, 0x1

    move/from16 v0, p3

    if-gt v11, v0, :cond_11

    .line 631
    iget-object v11, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->tail:[B

    const/4 v12, 0x0

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    iget-object v12, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->tail:[B

    const/4 v13, 0x1

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "p":I
    .restart local v7    # "p":I
    aget-byte v12, p1, v6

    and-int/lit16 v12, v12, 0xff

    or-int v10, v11, v12

    .line 634
    const/4 v11, 0x0

    iput v11, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->tailLen:I

    move v6, v7

    .end local v7    # "p":I
    .restart local v6    # "p":I
    goto/16 :goto_11

    .line 673
    .end local v3    # "op":I
    .end local v6    # "p":I
    .restart local v4    # "op":I
    .restart local v7    # "p":I
    :cond_fc
    if-eqz p4, :cond_20d

    .line 679
    iget v11, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->tailLen:I

    sub-int v11, v7, v11

    add-int/lit8 v12, p3, -0x1

    if-ne v11, v12, :cond_176

    .line 680
    const/4 v8, 0x0

    .line 681
    .local v8, "t":I
    iget v11, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->tailLen:I

    if-lez v11, :cond_171

    iget-object v11, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->tail:[B

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "t":I
    .local v9, "t":I
    aget-byte v11, v11, v8

    move v8, v9

    .end local v9    # "t":I
    .restart local v8    # "t":I
    move v6, v7

    .end local v7    # "p":I
    .restart local v6    # "p":I
    :goto_113
    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v10, v11, 0x4

    .line 682
    iget v11, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->tailLen:I

    sub-int/2addr v11, v8

    iput v11, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->tailLen:I

    .line 683
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "op":I
    .restart local v3    # "op":I
    shr-int/lit8 v11, v10, 0x6

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v4

    .line 684
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "op":I
    .restart local v4    # "op":I
    and-int/lit8 v11, v10, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v3

    .line 685
    iget-boolean v11, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->do_padding:Z

    if-eqz v11, :cond_13e

    .line 686
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "op":I
    .restart local v3    # "op":I
    const/16 v11, 0x3d

    aput-byte v11, v5, v4

    .line 687
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "op":I
    .restart local v4    # "op":I
    const/16 v11, 0x3d

    aput-byte v11, v5, v3

    :cond_13e
    move v3, v4

    .line 689
    .end local v4    # "op":I
    .restart local v3    # "op":I
    iget-boolean v11, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->do_newline:Z

    if-eqz v11, :cond_155

    .line 690
    iget-boolean v11, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->do_cr:Z

    if-eqz v11, :cond_14e

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "op":I
    .restart local v4    # "op":I
    const/16 v11, 0xd

    aput-byte v11, v5, v3

    move v3, v4

    .line 691
    .end local v4    # "op":I
    .restart local v3    # "op":I
    :cond_14e
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "op":I
    .restart local v4    # "op":I
    const/16 v11, 0xa

    aput-byte v11, v5, v3

    :goto_154
    move v3, v4

    .line 713
    .end local v4    # "op":I
    .end local v8    # "t":I
    .restart local v3    # "op":I
    :cond_155
    :goto_155
    iget v11, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->tailLen:I

    if-eqz v11, :cond_160

    .line 714
    const-string v11, "BASE64"

    const-string v12, "Error during encoding"

    invoke-static {v11, v12}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    :cond_160
    move/from16 v0, p3

    if-eq v6, v0, :cond_16b

    .line 718
    const-string v11, "BASE64"

    const-string v12, "Error during encoding"

    invoke-static {v11, v12}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    :cond_16b
    :goto_16b
    iput v3, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->op:I

    .line 734
    iput v2, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->count:I

    .line 736
    const/4 v11, 0x1

    return v11

    .line 681
    .end local v3    # "op":I
    .end local v6    # "p":I
    .restart local v4    # "op":I
    .restart local v7    # "p":I
    .restart local v8    # "t":I
    :cond_171
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "p":I
    .restart local v6    # "p":I
    aget-byte v11, p1, v7

    goto :goto_113

    .line 693
    .end local v6    # "p":I
    .end local v8    # "t":I
    .restart local v7    # "p":I
    :cond_176
    iget v11, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->tailLen:I

    sub-int v11, v7, v11

    add-int/lit8 v12, p3, -0x2

    if-ne v11, v12, :cond_1ef

    .line 694
    const/4 v8, 0x0

    .line 695
    .restart local v8    # "t":I
    iget v11, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->tailLen:I

    const/4 v12, 0x1

    if-le v11, v12, :cond_1e4

    iget-object v11, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->tail:[B

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "t":I
    .restart local v9    # "t":I
    aget-byte v11, v11, v8

    move v8, v9

    .end local v9    # "t":I
    .restart local v8    # "t":I
    move v6, v7

    .end local v7    # "p":I
    .restart local v6    # "p":I
    :goto_18c
    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v12, v11, 0xa

    iget v11, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->tailLen:I

    if-lez v11, :cond_1e9

    iget-object v11, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->tail:[B

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "t":I
    .restart local v9    # "t":I
    aget-byte v11, v11, v8

    move v8, v9

    .end local v9    # "t":I
    .restart local v8    # "t":I
    :goto_19b
    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x2

    or-int v10, v12, v11

    .line 697
    iget v11, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->tailLen:I

    sub-int/2addr v11, v8

    iput v11, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->tailLen:I

    .line 698
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "op":I
    .restart local v3    # "op":I
    shr-int/lit8 v11, v10, 0xc

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v4

    .line 699
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "op":I
    .restart local v4    # "op":I
    shr-int/lit8 v11, v10, 0x6

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v3

    .line 700
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "op":I
    .restart local v3    # "op":I
    and-int/lit8 v11, v10, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v4

    .line 701
    iget-boolean v11, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->do_padding:Z

    if-eqz v11, :cond_1cd

    .line 702
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "op":I
    .restart local v4    # "op":I
    const/16 v11, 0x3d

    aput-byte v11, v5, v3

    move v3, v4

    .line 704
    .end local v4    # "op":I
    .restart local v3    # "op":I
    :cond_1cd
    iget-boolean v11, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->do_newline:Z

    if-eqz v11, :cond_155

    .line 705
    iget-boolean v11, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->do_cr:Z

    if-eqz v11, :cond_1dc

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "op":I
    .restart local v4    # "op":I
    const/16 v11, 0xd

    aput-byte v11, v5, v3

    move v3, v4

    .line 706
    .end local v4    # "op":I
    .restart local v3    # "op":I
    :cond_1dc
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "op":I
    .restart local v4    # "op":I
    const/16 v11, 0xa

    aput-byte v11, v5, v3

    goto/16 :goto_154

    .line 695
    .end local v6    # "p":I
    .restart local v7    # "p":I
    :cond_1e4
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "p":I
    .restart local v6    # "p":I
    aget-byte v11, p1, v7

    goto :goto_18c

    :cond_1e9
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "p":I
    .restart local v7    # "p":I
    aget-byte v11, p1, v6

    move v6, v7

    .end local v7    # "p":I
    .restart local v6    # "p":I
    goto :goto_19b

    .line 708
    .end local v6    # "p":I
    .end local v8    # "t":I
    .restart local v7    # "p":I
    :cond_1ef
    iget-boolean v11, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->do_newline:Z

    if-eqz v11, :cond_209

    if-lez v4, :cond_209

    const/16 v11, 0x13

    if-eq v2, v11, :cond_209

    .line 709
    iget-boolean v11, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->do_cr:Z

    if-eqz v11, :cond_243

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "op":I
    .restart local v3    # "op":I
    const/16 v11, 0xd

    aput-byte v11, v5, v4

    .line 710
    :goto_203
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "op":I
    .restart local v4    # "op":I
    const/16 v11, 0xa

    aput-byte v11, v5, v3

    :cond_209
    move v6, v7

    .end local v7    # "p":I
    .restart local v6    # "p":I
    move v3, v4

    .end local v4    # "op":I
    .restart local v3    # "op":I
    goto/16 :goto_155

    .line 725
    .end local v3    # "op":I
    .end local v6    # "p":I
    .restart local v4    # "op":I
    .restart local v7    # "p":I
    :cond_20d
    add-int/lit8 v11, p3, -0x1

    if-ne v7, v11, :cond_221

    .line 726
    iget-object v11, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->tail:[B

    iget v12, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->tailLen:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->tailLen:I

    aget-byte v13, p1, v7

    aput-byte v13, v11, v12

    move v6, v7

    .end local v7    # "p":I
    .restart local v6    # "p":I
    move v3, v4

    .end local v4    # "op":I
    .restart local v3    # "op":I
    goto/16 :goto_16b

    .line 727
    .end local v3    # "op":I
    .end local v6    # "p":I
    .restart local v4    # "op":I
    .restart local v7    # "p":I
    :cond_221
    add-int/lit8 v11, p3, -0x2

    if-ne v7, v11, :cond_23f

    .line 728
    iget-object v11, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->tail:[B

    iget v12, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->tailLen:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->tailLen:I

    aget-byte v13, p1, v7

    aput-byte v13, v11, v12

    .line 729
    iget-object v11, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->tail:[B

    iget v12, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->tailLen:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lnet/hockeyapp/android/utils/Base64$Encoder;->tailLen:I

    add-int/lit8 v13, v7, 0x1

    aget-byte v13, p1, v13

    aput-byte v13, v11, v12

    :cond_23f
    move v6, v7

    .end local v7    # "p":I
    .restart local v6    # "p":I
    move v3, v4

    .end local v4    # "op":I
    .restart local v3    # "op":I
    goto/16 :goto_16b

    .end local v3    # "op":I
    .end local v6    # "p":I
    .restart local v4    # "op":I
    .restart local v7    # "p":I
    :cond_243
    move v3, v4

    .end local v4    # "op":I
    .restart local v3    # "op":I
    goto :goto_203

    .end local v7    # "p":I
    .restart local v6    # "p":I
    :cond_245
    move v7, v6

    .end local v6    # "p":I
    .restart local v7    # "p":I
    move v4, v3

    .end local v3    # "op":I
    .restart local v4    # "op":I
    goto/16 :goto_52

    .line 612
    nop

    :pswitch_data_24a
    .packed-switch 0x0
        :pswitch_11
        :pswitch_b0
        :pswitch_d5
    .end packed-switch
.end method
