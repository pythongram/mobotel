.class public Lorg/telegram/ui/Components/SpannableStringLight;
.super Landroid/text/SpannableString;
.source "SpannableStringLight.java"


# static fields
.field private static fieldsAvailable:Z

.field private static mSpanCountField:Ljava/lang/reflect/Field;

.field private static mSpanDataField:Ljava/lang/reflect/Field;

.field private static mSpansField:Ljava/lang/reflect/Field;


# instance fields
.field private mSpanCountOverride:I

.field private mSpanDataOverride:[I

.field private mSpansOverride:[Ljava/lang/Object;

.field private num:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "source"    # Ljava/lang/CharSequence;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 33
    :try_start_3
    sget-object v1, Lorg/telegram/ui/Components/SpannableStringLight;->mSpansField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/telegram/ui/Components/SpannableStringLight;->mSpansOverride:[Ljava/lang/Object;

    .line 34
    sget-object v1, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanDataField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, p0, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanDataOverride:[I

    .line 35
    sget-object v1, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanCountField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanCountOverride:I
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_29} :catch_2a

    .line 39
    :goto_29
    return-void

    .line 36
    :catch_2a
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_29
.end method

.method public static isFieldsAvailable()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 58
    sget-boolean v2, Lorg/telegram/ui/Components/SpannableStringLight;->fieldsAvailable:Z

    if-nez v2, :cond_47

    sget-object v2, Lorg/telegram/ui/Components/SpannableStringLight;->mSpansField:Ljava/lang/reflect/Field;

    if-nez v2, :cond_47

    .line 60
    :try_start_9
    const-class v2, Landroid/text/SpannableString;

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mSpans"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lorg/telegram/ui/Components/SpannableStringLight;->mSpansField:Ljava/lang/reflect/Field;

    .line 61
    sget-object v2, Lorg/telegram/ui/Components/SpannableStringLight;->mSpansField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 63
    const-class v2, Landroid/text/SpannableString;

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mSpanData"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanDataField:Ljava/lang/reflect/Field;

    .line 64
    sget-object v2, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanDataField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 66
    const-class v2, Landroid/text/SpannableString;

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mSpanCount"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanCountField:Ljava/lang/reflect/Field;

    .line 67
    sget-object v2, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanCountField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_45} :catch_4c

    .line 71
    .local v0, "e":Ljava/lang/Throwable;
    :goto_45
    sput-boolean v1, Lorg/telegram/ui/Components/SpannableStringLight;->fieldsAvailable:Z

    .line 73
    :cond_47
    sget-object v2, Lorg/telegram/ui/Components/SpannableStringLight;->mSpansField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_51

    :goto_4b
    return v1

    .line 68
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_4c
    move-exception v0

    .line 69
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_45

    .line 73
    :cond_51
    const/4 v1, 0x0

    goto :goto_4b
.end method


# virtual methods
.method public removeSpan(Ljava/lang/Object;)V
    .registers 2
    .param p1, "what"    # Ljava/lang/Object;

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public setSpanLight(Ljava/lang/Object;III)V
    .registers 7
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/SpannableStringLight;->mSpansOverride:[Ljava/lang/Object;

    iget v1, p0, Lorg/telegram/ui/Components/SpannableStringLight;->num:I

    aput-object p1, v0, v1

    .line 78
    iget-object v0, p0, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanDataOverride:[I

    iget v1, p0, Lorg/telegram/ui/Components/SpannableStringLight;->num:I

    mul-int/lit8 v1, v1, 0x3

    aput p2, v0, v1

    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanDataOverride:[I

    iget v1, p0, Lorg/telegram/ui/Components/SpannableStringLight;->num:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x1

    aput p3, v0, v1

    .line 80
    iget-object v0, p0, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanDataOverride:[I

    iget v1, p0, Lorg/telegram/ui/Components/SpannableStringLight;->num:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x2

    aput p4, v0, v1

    .line 81
    iget v0, p0, Lorg/telegram/ui/Components/SpannableStringLight;->num:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/SpannableStringLight;->num:I

    .line 82
    return-void
.end method

.method public setSpansCount(I)V
    .registers 5
    .param p1, "count"    # I

    .prologue
    .line 42
    iget v1, p0, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanCountOverride:I

    add-int/2addr p1, v1

    .line 43
    new-array v1, p1, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/telegram/ui/Components/SpannableStringLight;->mSpansOverride:[Ljava/lang/Object;

    .line 44
    mul-int/lit8 v1, p1, 0x3

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanDataOverride:[I

    .line 45
    iget v1, p0, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanCountOverride:I

    iput v1, p0, Lorg/telegram/ui/Components/SpannableStringLight;->num:I

    .line 46
    iput p1, p0, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanCountOverride:I

    .line 49
    :try_start_13
    sget-object v1, Lorg/telegram/ui/Components/SpannableStringLight;->mSpansField:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lorg/telegram/ui/Components/SpannableStringLight;->mSpansOverride:[Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    sget-object v1, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanDataField:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanDataOverride:[I

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    sget-object v1, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanCountField:Ljava/lang/reflect/Field;

    iget v2, p0, Lorg/telegram/ui/Components/SpannableStringLight;->mSpanCountOverride:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_2c} :catch_2d

    .line 55
    :goto_2c
    return-void

    .line 52
    :catch_2d
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2c
.end method
