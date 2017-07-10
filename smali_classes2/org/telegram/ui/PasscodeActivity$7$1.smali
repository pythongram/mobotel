.class Lorg/telegram/ui/PasscodeActivity$7$1;
.super Ljava/lang/Object;
.source "PasscodeActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/NumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PasscodeActivity$7;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PasscodeActivity$7;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PasscodeActivity$7;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/PasscodeActivity$7;

    .prologue
    .line 341
    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity$7$1;->this$1:Lorg/telegram/ui/PasscodeActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .registers 9
    .param p1, "value"    # I

    .prologue
    const/4 v6, 0x5

    const v5, 0x7f0700ca

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 344
    if-nez p1, :cond_12

    .line 345
    const-string v0, "AutoLockDisabled"

    const v1, 0x7f0700c9

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 355
    :goto_11
    return-object v0

    .line 346
    :cond_12
    if-ne p1, v3, :cond_25

    .line 347
    const-string v0, "AutoLockInTime"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Minutes"

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v5, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 348
    :cond_25
    const/4 v0, 0x2

    if-ne p1, v0, :cond_39

    .line 349
    const-string v0, "AutoLockInTime"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Minutes"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v5, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 350
    :cond_39
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4d

    .line 351
    const-string v0, "AutoLockInTime"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Hours"

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v5, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 352
    :cond_4d
    const/4 v0, 0x4

    if-ne p1, v0, :cond_61

    .line 353
    const-string v0, "AutoLockInTime"

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Hours"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v5, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 355
    :cond_61
    const-string v0, ""

    goto :goto_11
.end method
