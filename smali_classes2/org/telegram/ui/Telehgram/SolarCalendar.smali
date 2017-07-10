.class public Lorg/telegram/ui/Telehgram/SolarCalendar;
.super Ljava/lang/Object;
.source "SolarCalendar.java"


# instance fields
.field private calendar:Ljava/util/Calendar;

.field private date:I

.field private month:I

.field private weekDay:I

.field private year:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->calendar:Ljava/util/Calendar;

    .line 20
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/SolarCalendar;->calSolarCalendar()V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .registers 2
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->calendar:Ljava/util/Calendar;

    .line 25
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/SolarCalendar;->calSolarCalendar()V

    .line 26
    return-void
.end method

.method private calSolarCalendar()V
    .registers 14

    .prologue
    const/16 v12, 0xba

    const/16 v11, 0x1f

    const/16 v10, 0xc

    const/4 v9, 0x1

    const/16 v8, 0x1e

    .line 29
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->calendar:Ljava/util/Calendar;

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 30
    .local v4, "georgianYear":I
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->calendar:Ljava/util/Calendar;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v3, v6, 0x1

    .line 31
    .local v3, "georgianMonth":I
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->calendar:Ljava/util/Calendar;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 32
    .local v2, "georgianDate":I
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->calendar:Ljava/util/Calendar;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->weekDay:I

    .line 33
    new-array v0, v10, [I

    fill-array-data v0, :array_16e

    .line 34
    .local v0, "buf1":[I
    new-array v1, v10, [I

    fill-array-data v1, :array_18a

    .line 36
    .local v1, "buf2":[I
    rem-int/lit8 v6, v4, 0x4

    if-eqz v6, :cond_d4

    .line 37
    add-int/lit8 v6, v3, -0x1

    aget v6, v0, v6

    add-int/2addr v6, v2

    iput v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    .line 38
    iget v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    const/16 v7, 0x4f

    if-le v6, v7, :cond_9d

    .line 39
    iget v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    add-int/lit8 v6, v6, -0x4f

    iput v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    .line 40
    iget v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    if-gt v6, v12, :cond_72

    .line 41
    iget v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    rem-int/lit8 v6, v6, 0x1f

    packed-switch v6, :pswitch_data_1a6

    .line 47
    iget v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    div-int/lit8 v6, v6, 0x1f

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->month:I

    .line 48
    iget v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    rem-int/lit8 v6, v6, 0x1f

    iput v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    .line 51
    :goto_64
    add-int/lit16 v6, v4, -0x26d

    iput v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->year:I

    .line 135
    :goto_68
    return-void

    .line 43
    :pswitch_69
    iget v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    div-int/lit8 v6, v6, 0x1f

    iput v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->month:I

    .line 44
    iput v11, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    goto :goto_64

    .line 54
    :cond_72
    iget v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    add-int/lit16 v6, v6, -0xba

    iput v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    .line 55
    iget v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    rem-int/lit8 v6, v6, 0x1e

    packed-switch v6, :pswitch_data_1ac

    .line 61
    iget v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    div-int/lit8 v6, v6, 0x1e

    add-int/lit8 v6, v6, 0x7

    iput v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->month:I

    .line 62
    iget v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    rem-int/lit8 v6, v6, 0x1e

    iput v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    .line 65
    :goto_8d
    add-int/lit16 v6, v4, -0x26d

    iput v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->year:I

    goto :goto_68

    .line 57
    :pswitch_92
    iget v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    div-int/lit8 v6, v6, 0x1e

    add-int/lit8 v6, v6, 0x6

    iput v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->month:I

    .line 58
    iput v8, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    goto :goto_8d

    .line 68
    :cond_9d
    const/16 v6, 0x7cc

    if-le v4, v6, :cond_a5

    rem-int/lit8 v6, v4, 0x4

    if-eq v6, v9, :cond_c6

    .line 69
    :cond_a5
    const/16 v5, 0xa

    .line 73
    .local v5, "ld":I
    :goto_a7
    iget v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    add-int/2addr v6, v5

    iput v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    .line 74
    iget v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    rem-int/lit8 v6, v6, 0x1e

    packed-switch v6, :pswitch_data_1b2

    .line 80
    iget v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    div-int/lit8 v6, v6, 0x1e

    add-int/lit8 v6, v6, 0xa

    iput v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->month:I

    .line 81
    iget v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    rem-int/lit8 v6, v6, 0x1e

    iput v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    .line 84
    :goto_c1
    add-int/lit16 v6, v4, -0x26e

    iput v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->year:I

    goto :goto_68

    .line 71
    .end local v5    # "ld":I
    :cond_c6
    const/16 v5, 0xb

    .restart local v5    # "ld":I
    goto :goto_a7

    .line 76
    :pswitch_c9
    iget v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    div-int/lit8 v6, v6, 0x1e

    add-int/lit8 v6, v6, 0x9

    iput v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->month:I

    .line 77
    iput v8, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    goto :goto_c1

    .line 87
    .end local v5    # "ld":I
    :cond_d4
    add-int/lit8 v6, v3, -0x1

    aget v6, v1, v6

    add-int/2addr v6, v2

    iput v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    .line 88
    const/16 v6, 0x7cc

    if-lt v4, v6, :cond_109

    .line 89
    const/16 v5, 0x4f

    .line 93
    .restart local v5    # "ld":I
    :goto_e1
    iget v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    if-le v6, v5, :cond_141

    .line 94
    iget v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    sub-int/2addr v6, v5

    iput v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    .line 95
    iget v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    if-gt v6, v12, :cond_115

    .line 96
    iget v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    rem-int/lit8 v6, v6, 0x1f

    packed-switch v6, :pswitch_data_1b8

    .line 102
    iget v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    div-int/lit8 v6, v6, 0x1f

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->month:I

    .line 103
    iget v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    rem-int/lit8 v6, v6, 0x1f

    iput v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    .line 106
    :goto_103
    add-int/lit16 v6, v4, -0x26d

    iput v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->year:I

    goto/16 :goto_68

    .line 91
    .end local v5    # "ld":I
    :cond_109
    const/16 v5, 0x50

    .restart local v5    # "ld":I
    goto :goto_e1

    .line 98
    :pswitch_10c
    iget v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    div-int/lit8 v6, v6, 0x1f

    iput v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->month:I

    .line 99
    iput v11, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    goto :goto_103

    .line 109
    :cond_115
    iget v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    add-int/lit16 v6, v6, -0xba

    iput v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    .line 110
    iget v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    rem-int/lit8 v6, v6, 0x1e

    packed-switch v6, :pswitch_data_1be

    .line 116
    iget v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    div-int/lit8 v6, v6, 0x1e

    add-int/lit8 v6, v6, 0x7

    iput v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->month:I

    .line 117
    iget v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    rem-int/lit8 v6, v6, 0x1e

    iput v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    .line 120
    :goto_130
    add-int/lit16 v6, v4, -0x26d

    iput v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->year:I

    goto/16 :goto_68

    .line 112
    :pswitch_136
    iget v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    div-int/lit8 v6, v6, 0x1e

    add-int/lit8 v6, v6, 0x6

    iput v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->month:I

    .line 113
    iput v8, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    goto :goto_130

    .line 123
    :cond_141
    iget v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    add-int/lit8 v6, v6, 0xa

    iput v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    .line 124
    iget v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    rem-int/lit8 v6, v6, 0x1e

    packed-switch v6, :pswitch_data_1c4

    .line 130
    iget v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    div-int/lit8 v6, v6, 0x1e

    add-int/lit8 v6, v6, 0xa

    iput v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->month:I

    .line 131
    iget v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    rem-int/lit8 v6, v6, 0x1e

    iput v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    .line 134
    :goto_15c
    add-int/lit16 v6, v4, -0x26e

    iput v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->year:I

    goto/16 :goto_68

    .line 126
    :pswitch_162
    iget v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    div-int/lit8 v6, v6, 0x1e

    add-int/lit8 v6, v6, 0x9

    iput v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->month:I

    .line 127
    iput v8, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    goto :goto_15c

    .line 33
    nop

    :array_16e
    .array-data 4
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb5
        0xd4
        0xf3
        0x111
        0x130
        0x14e
    .end array-data

    .line 34
    :array_18a
    .array-data 4
        0x0
        0x1f
        0x3c
        0x5b
        0x79
        0x98
        0xb6
        0xd5
        0xf4
        0x112
        0x131
        0x14f
    .end array-data

    .line 41
    :pswitch_data_1a6
    .packed-switch 0x0
        :pswitch_69
    .end packed-switch

    .line 55
    :pswitch_data_1ac
    .packed-switch 0x0
        :pswitch_92
    .end packed-switch

    .line 74
    :pswitch_data_1b2
    .packed-switch 0x0
        :pswitch_c9
    .end packed-switch

    .line 96
    :pswitch_data_1b8
    .packed-switch 0x0
        :pswitch_10c
    .end packed-switch

    .line 110
    :pswitch_data_1be
    .packed-switch 0x0
        :pswitch_136
    .end packed-switch

    .line 124
    :pswitch_data_1c4
    .packed-switch 0x0
        :pswitch_162
    .end packed-switch
.end method

.method public static main([Ljava/lang/String;)V
    .registers 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 246
    return-void
.end method


# virtual methods
.method public getDesDate()Ljava/lang/String;
    .registers 5

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .local v0, "describedDateFormat":Ljava/lang/StringBuilder;
    iget v1, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/SolarCalendar;->getMonth()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->year:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Saat"

    const v3, 0x7f0707a6

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/SolarCalendar;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMonth()Ljava/lang/String;
    .registers 4

    .prologue
    .line 160
    const-string v0, "armv7_bazaar"

    .line 161
    .local v0, "strMonth":Ljava/lang/String;
    iget v1, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->month:I

    packed-switch v1, :pswitch_data_80

    .line 187
    .end local v0    # "strMonth":Ljava/lang/String;
    :goto_7
    return-object v0

    .line 163
    .restart local v0    # "strMonth":Ljava/lang/String;
    :pswitch_8
    const-string v1, "Farvardin"

    const v2, 0x7f0706e3

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 165
    :pswitch_12
    const-string v1, "Ordibehesht"

    const v2, 0x7f07077d

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 167
    :pswitch_1c
    const-string v1, "Khordad"

    const v2, 0x7f07074a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 169
    :pswitch_26
    const-string v1, "Tir"

    const v2, 0x7f0707fb

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 171
    :pswitch_30
    const-string v1, "Mordad"

    const v2, 0x7f07075e

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 173
    :pswitch_3a
    const-string v1, "Shahrivar"

    const v2, 0x7f0707bb

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 175
    :pswitch_44
    const-string v1, "Mehr"

    const v2, 0x7f070757

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 177
    :pswitch_4e
    const-string v1, "Aban"

    const v2, 0x7f070638

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 179
    :pswitch_58
    const-string v1, "Azar"

    const v2, 0x7f07065f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 181
    :pswitch_62
    const-string v1, "Dey"

    const v2, 0x7f0706b2

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 183
    :pswitch_6c
    const-string v1, "Bahman"

    const v2, 0x7f070661

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 185
    :pswitch_76
    const-string v1, "Esfand"

    const v2, 0x7f0706e1

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 161
    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_8
        :pswitch_12
        :pswitch_1c
        :pswitch_26
        :pswitch_30
        :pswitch_3a
        :pswitch_44
        :pswitch_4e
        :pswitch_58
        :pswitch_62
        :pswitch_6c
        :pswitch_76
    .end packed-switch
.end method

.method public getNumDate()Ljava/lang/String;
    .registers 4

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .local v0, "numericDateFormat":Ljava/lang/StringBuilder;
    iget v1, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->year:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->month:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNumDateTime()Ljava/lang/String;
    .registers 5

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .local v0, "numericDateFormat":Ljava/lang/StringBuilder;
    iget v1, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->year:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->month:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Saat"

    const v3, 0x7f0707a6

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/SolarCalendar;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getShortDesDate()Ljava/lang/String;
    .registers 4

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .local v0, "describedDateFormat":Ljava/lang/StringBuilder;
    iget v1, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/SolarCalendar;->getMonth()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getShortDesDateTime()Ljava/lang/String;
    .registers 5

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .local v0, "describedDateFormat":Ljava/lang/StringBuilder;
    iget v1, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->date:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/SolarCalendar;->getMonth()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Saat"

    const v3, 0x7f0707a6

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/SolarCalendar;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTime()Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/16 v5, 0xc

    .line 222
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v7, "mainconfig"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "enable24HourFormat"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 223
    .local v2, "is24HourFormat":Z
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->calendar:Ljava/util/Calendar;

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 224
    .local v0, "h":I
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->calendar:Ljava/util/Calendar;

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 225
    .local v3, "m":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .local v4, "time":Ljava/lang/StringBuilder;
    if-nez v2, :cond_9d

    .line 227
    if-ge v0, v5, :cond_74

    move v1, v0

    .line 228
    .local v1, "i":I
    :goto_29
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v6, 0xa

    if-ge v3, v6, :cond_7b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_4a
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ge v0, v5, :cond_80

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "AM"

    const v8, 0x7f070637

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_6c
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .end local v1    # "i":I
    :goto_6f
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 227
    :cond_74
    if-ne v0, v5, :cond_78

    move v1, v5

    goto :goto_29

    :cond_78
    add-int/lit8 v1, v0, -0xc

    goto :goto_29

    .line 228
    .restart local v1    # "i":I
    :cond_7b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_4a

    :cond_80
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "PM"

    const v8, 0x7f070781

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_6c

    .line 232
    .end local v1    # "i":I
    :cond_9d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_6f
.end method

.method public getTimeInMillis()J
    .registers 3

    .prologue
    .line 238
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWeekDay()Ljava/lang/String;
    .registers 4

    .prologue
    .line 138
    const-string v0, "armv7_bazaar"

    .line 139
    .local v0, "strWeekDay":Ljava/lang/String;
    iget v1, p0, Lorg/telegram/ui/Telehgram/SolarCalendar;->weekDay:I

    packed-switch v1, :pswitch_data_4e

    .line 155
    .end local v0    # "strWeekDay":Ljava/lang/String;
    :goto_7
    return-object v0

    .line 141
    .restart local v0    # "strWeekDay":Ljava/lang/String;
    :pswitch_8
    const-string v1, "Sunday"

    const v2, 0x7f0707e4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 143
    :pswitch_12
    const-string v1, "Monday"

    const v2, 0x7f07075d

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 145
    :pswitch_1c
    const-string v1, "Tuesday"

    const v2, 0x7f0707fe

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 147
    :pswitch_26
    const-string v1, "Wednesday"

    const v2, 0x7f07083b

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 149
    :pswitch_30
    const-string v1, "Thursday"

    const v2, 0x7f0707f7

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 151
    :pswitch_3a
    const-string v1, "Friday"

    const v2, 0x7f070711

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 153
    :pswitch_44
    const-string v1, "Saturday"

    const v2, 0x7f0707a7

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 139
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_8
        :pswitch_12
        :pswitch_1c
        :pswitch_26
        :pswitch_30
        :pswitch_3a
        :pswitch_44
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 242
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/SolarCalendar;->getDesDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
