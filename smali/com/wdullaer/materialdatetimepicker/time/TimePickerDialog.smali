.class public Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;
.super Landroid/app/DialogFragment;
.source "TimePickerDialog.java"

# interfaces
.implements Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;
.implements Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$KeyboardListener;,
        Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;,
        Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;
    }
.end annotation


# static fields
.field public static final AM:I = 0x0

.field public static final HOUR_INDEX:I = 0x0

.field private static final KEY_ACCENT:Ljava/lang/String; = "accent"

.field private static final KEY_CANCEL_RESID:Ljava/lang/String; = "cancel_resid"

.field private static final KEY_CANCEL_STRING:Ljava/lang/String; = "cancel_string"

.field private static final KEY_CURRENT_ITEM_SHOWING:Ljava/lang/String; = "current_item_showing"

.field private static final KEY_DISMISS:Ljava/lang/String; = "dismiss"

.field private static final KEY_ENABLE_SECONDS:Ljava/lang/String; = "enable_seconds"

.field private static final KEY_INITIAL_TIME:Ljava/lang/String; = "initial_time"

.field private static final KEY_IN_KB_MODE:Ljava/lang/String; = "in_kb_mode"

.field private static final KEY_IS_24_HOUR_VIEW:Ljava/lang/String; = "is_24_hour_view"

.field private static final KEY_MAX_TIME:Ljava/lang/String; = "max_time"

.field private static final KEY_MIN_TIME:Ljava/lang/String; = "min_time"

.field private static final KEY_OK_RESID:Ljava/lang/String; = "ok_resid"

.field private static final KEY_OK_STRING:Ljava/lang/String; = "ok_string"

.field private static final KEY_SELECTABLE_TIMES:Ljava/lang/String; = "selectable_times"

.field private static final KEY_THEME_DARK:Ljava/lang/String; = "theme_dark"

.field private static final KEY_THEME_DARK_CHANGED:Ljava/lang/String; = "theme_dark_changed"

.field private static final KEY_TITLE:Ljava/lang/String; = "dialog_title"

.field private static final KEY_TYPED_TIMES:Ljava/lang/String; = "typed_times"

.field private static final KEY_VIBRATE:Ljava/lang/String; = "vibrate"

.field public static final MINUTE_INDEX:I = 0x1

.field public static final PM:I = 0x1

.field private static final PULSE_ANIMATOR_DELAY:I = 0x12c

.field public static final SECOND_INDEX:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TimePickerDialog"


# instance fields
.field private mAccentColor:I

.field private mAllowAutoAdvance:Z

.field private mAmKeyCode:I

.field private mAmPmHitspace:Landroid/view/View;

.field private mAmPmTextView:Landroid/widget/TextView;

.field private mAmText:Ljava/lang/String;

.field private mCallback:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;

.field private mCancelButton:Landroid/widget/Button;

.field private mCancelResid:I

.field private mCancelString:Ljava/lang/String;

.field private mDeletedKeyFormat:Ljava/lang/String;

.field private mDismissOnPause:Z

.field private mDoublePlaceholderText:Ljava/lang/String;

.field private mEnableSeconds:Z

.field private mHapticFeedbackController:Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;

.field private mHourPickerDescription:Ljava/lang/String;

.field private mHourSpaceView:Landroid/widget/TextView;

.field private mHourView:Landroid/widget/TextView;

.field private mInKbMode:Z

.field private mInitialTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

.field private mIs24HourMode:Z

.field private mLegalTimesTree:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

.field private mMaxTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

.field private mMinTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

.field private mMinutePickerDescription:Ljava/lang/String;

.field private mMinuteSpaceView:Landroid/widget/TextView;

.field private mMinuteView:Landroid/widget/TextView;

.field private mOkButton:Landroid/widget/Button;

.field private mOkResid:I

.field private mOkString:Ljava/lang/String;

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mPlaceholderText:C

.field private mPmKeyCode:I

.field private mPmText:Ljava/lang/String;

.field private mSecondPickerDescription:Ljava/lang/String;

.field private mSecondSpaceView:Landroid/widget/TextView;

.field private mSecondView:Landroid/widget/TextView;

.field private mSelectHours:Ljava/lang/String;

.field private mSelectMinutes:Ljava/lang/String;

.field private mSelectSeconds:Ljava/lang/String;

.field private mSelectableTimes:[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

.field private mSelectedColor:I

.field private mThemeDark:Z

.field private mThemeDarkChanged:Z

.field private mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

.field private mTitle:Ljava/lang/String;

.field private mTypedTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUnselectedColor:I

.field private mVibrate:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 168
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:I

    .line 170
    return-void
.end method

.method static synthetic access$100(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;IZZZ)V
    .registers 5
    .param p0, "x0"    # Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setCurrentItemShowing(IZZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;)Z
    .registers 2
    .param p0, "x0"    # Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    return v0
.end method

.method static synthetic access$300(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;)Z
    .registers 2
    .param p0, "x0"    # Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->finishKbMode(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;)Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;
    .registers 2
    .param p0, "x0"    # Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->processKeyUp(I)Z

    move-result v0

    return v0
.end method

.method private addKeyIfLegal(I)Z
    .registers 10
    .param p1, "keyCode"    # I

    .prologue
    const/4 v7, 0x7

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1076
    iget-boolean v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-boolean v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    if-eqz v3, :cond_1f

    const/4 v3, 0x6

    :goto_12
    if-eq v4, v3, :cond_1e

    :cond_14
    iget-boolean v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v3, :cond_21

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1098
    :cond_1e
    :goto_1e
    return v1

    .line 1076
    :cond_1f
    const/4 v3, 0x4

    goto :goto_12

    .line 1081
    :cond_21
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1082
    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isTypedTimeLegalSoFar()Z

    move-result v3

    if-nez v3, :cond_34

    .line 1083
    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->deleteLastTypedKey()I

    goto :goto_1e

    .line 1087
    :cond_34
    invoke-static {p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getValFromKeyCode(I)I

    move-result v0

    .line 1088
    .local v0, "val":I
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    const-string v4, "%d"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1090
    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v1

    if-eqz v1, :cond_89

    .line 1091
    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v1, :cond_84

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    if-eqz v1, :cond_8b

    const/4 v1, 0x5

    :goto_60
    if-gt v3, v1, :cond_84

    .line 1092
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1093
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1095
    :cond_84
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_89
    move v1, v2

    .line 1098
    goto :goto_1e

    .line 1091
    :cond_8b
    const/4 v1, 0x3

    goto :goto_60
.end method

.method private deleteLastTypedKey()I
    .registers 4

    .prologue
    .line 1134
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1135
    .local v0, "deleted":I
    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v1

    if-nez v1, :cond_20

    .line 1136
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1138
    :cond_20
    return v0
.end method

.method private finishKbMode(Z)V
    .registers 10
    .param p1, "updateDisplays"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1146
    iput-boolean v6, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    .line 1147
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_33

    .line 1148
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getEnteredTime([Ljava/lang/Boolean;)[I

    move-result-object v0

    .line 1149
    .local v0, "values":[I
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    new-instance v2, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    aget v3, v0, v6

    aget v4, v0, v7

    const/4 v5, 0x2

    aget v5, v0, v5

    invoke-direct {v2, v3, v4, v5}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    invoke-virtual {v1, v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setTime(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V

    .line 1150
    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v1, :cond_2e

    .line 1151
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    const/4 v2, 0x3

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setAmOrPm(I)V

    .line 1153
    :cond_2e
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1155
    .end local v0    # "values":[I
    :cond_33
    if-eqz p1, :cond_3d

    .line 1156
    invoke-direct {p0, v6}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->updateDisplay(Z)V

    .line 1157
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1, v7}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->trySettingInputEnabled(Z)Z

    .line 1159
    :cond_3d
    return-void
.end method

.method private generateLegalTimesTree()V
    .registers 25

    .prologue
    .line 1331
    const/4 v5, 0x7

    .line 1332
    .local v5, "k0":I
    const/16 v6, 0x8

    .line 1333
    .local v6, "k1":I
    const/16 v7, 0x9

    .line 1334
    .local v7, "k2":I
    const/16 v8, 0xa

    .line 1335
    .local v8, "k3":I
    const/16 v9, 0xb

    .line 1336
    .local v9, "k4":I
    const/16 v10, 0xc

    .line 1337
    .local v10, "k5":I
    const/16 v11, 0xd

    .line 1338
    .local v11, "k6":I
    const/16 v12, 0xe

    .line 1339
    .local v12, "k7":I
    const/16 v13, 0xf

    .line 1340
    .local v13, "k8":I
    const/16 v14, 0x10

    .line 1343
    .local v14, "k9":I
    new-instance v21, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    .line 1344
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    move/from16 v21, v0

    if-eqz v21, :cond_251

    .line 1346
    new-instance v15, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v5, v21, v22

    const/16 v22, 0x1

    aput v6, v21, v22

    const/16 v22, 0x2

    aput v7, v21, v22

    const/16 v22, 0x3

    aput v8, v21, v22

    const/16 v22, 0x4

    aput v9, v21, v22

    const/16 v22, 0x5

    aput v10, v21, v22

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1347
    .local v15, "minuteFirstDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    new-instance v16, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v21, 0xa

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v5, v21, v22

    const/16 v22, 0x1

    aput v6, v21, v22

    const/16 v22, 0x2

    aput v7, v21, v22

    const/16 v22, 0x3

    aput v8, v21, v22

    const/16 v22, 0x4

    aput v9, v21, v22

    const/16 v22, 0x5

    aput v10, v21, v22

    const/16 v22, 0x6

    aput v11, v21, v22

    const/16 v22, 0x7

    aput v12, v21, v22

    const/16 v22, 0x8

    aput v13, v21, v22

    const/16 v22, 0x9

    aput v14, v21, v22

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1349
    .local v16, "minuteSecondDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    invoke-virtual/range {v15 .. v16}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1351
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    move/from16 v21, v0

    if-eqz v21, :cond_105

    .line 1352
    new-instance v18, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v5, v21, v22

    const/16 v22, 0x1

    aput v6, v21, v22

    const/16 v22, 0x2

    aput v7, v21, v22

    const/16 v22, 0x3

    aput v8, v21, v22

    const/16 v22, 0x4

    aput v9, v21, v22

    const/16 v22, 0x5

    aput v10, v21, v22

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1353
    .local v18, "secondsFirstDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    new-instance v19, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v21, 0xa

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v5, v21, v22

    const/16 v22, 0x1

    aput v6, v21, v22

    const/16 v22, 0x2

    aput v7, v21, v22

    const/16 v22, 0x3

    aput v8, v21, v22

    const/16 v22, 0x4

    aput v9, v21, v22

    const/16 v22, 0x5

    aput v10, v21, v22

    const/16 v22, 0x6

    aput v11, v21, v22

    const/16 v22, 0x7

    aput v12, v21, v22

    const/16 v22, 0x8

    aput v13, v21, v22

    const/16 v22, 0x9

    aput v14, v21, v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1354
    .local v19, "secondsSecondDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    invoke-virtual/range {v18 .. v19}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1357
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1361
    .end local v18    # "secondsFirstDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    .end local v19    # "secondsSecondDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    :cond_105
    new-instance v3, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v5, v21, v22

    const/16 v22, 0x1

    aput v6, v21, v22

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1362
    .local v3, "firstDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1365
    new-instance v17, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v5, v21, v22

    const/16 v22, 0x1

    aput v6, v21, v22

    const/16 v22, 0x2

    aput v7, v21, v22

    const/16 v22, 0x3

    aput v8, v21, v22

    const/16 v22, 0x4

    aput v9, v21, v22

    const/16 v22, 0x5

    aput v10, v21, v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1366
    .local v17, "secondDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1368
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1371
    new-instance v20, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v11, v21, v22

    const/16 v22, 0x1

    aput v12, v21, v22

    const/16 v22, 0x2

    aput v13, v21, v22

    const/16 v22, 0x3

    aput v14, v21, v22

    invoke-direct/range {v20 .. v21}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1373
    .local v20, "thirdDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1376
    new-instance v17, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    .end local v17    # "secondDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v11, v21, v22

    const/16 v22, 0x1

    aput v12, v21, v22

    const/16 v22, 0x2

    aput v13, v21, v22

    const/16 v22, 0x3

    aput v14, v21, v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1377
    .restart local v17    # "secondDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1379
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1382
    new-instance v3, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    .end local v3    # "firstDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v7, v21, v22

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1383
    .restart local v3    # "firstDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1386
    new-instance v17, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    .end local v17    # "secondDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v5, v21, v22

    const/16 v22, 0x1

    aput v6, v21, v22

    const/16 v22, 0x2

    aput v7, v21, v22

    const/16 v22, 0x3

    aput v8, v21, v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1387
    .restart local v17    # "secondDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1389
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1392
    new-instance v17, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    .end local v17    # "secondDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v9, v21, v22

    const/16 v22, 0x1

    aput v10, v21, v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1393
    .restart local v17    # "secondDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1395
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1398
    new-instance v3, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    .end local v3    # "firstDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    const/16 v21, 0x7

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v8, v21, v22

    const/16 v22, 0x1

    aput v9, v21, v22

    const/16 v22, 0x2

    aput v10, v21, v22

    const/16 v22, 0x3

    aput v11, v21, v22

    const/16 v22, 0x4

    aput v12, v21, v22

    const/16 v22, 0x5

    aput v13, v21, v22

    const/16 v22, 0x6

    aput v14, v21, v22

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1399
    .restart local v3    # "firstDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1401
    invoke-virtual {v3, v15}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1498
    .end local v15    # "minuteFirstDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    .end local v16    # "minuteSecondDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    :cond_250
    :goto_250
    return-void

    .line 1405
    .end local v3    # "firstDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    .end local v17    # "secondDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    .end local v20    # "thirdDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    :cond_251
    new-instance v2, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v23

    aput v23, v21, v22

    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v23

    aput v23, v21, v22

    move-object/from16 v0, v21

    invoke-direct {v2, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1408
    .local v2, "ampm":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    new-instance v18, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v5, v21, v22

    const/16 v22, 0x1

    aput v6, v21, v22

    const/16 v22, 0x2

    aput v7, v21, v22

    const/16 v22, 0x3

    aput v8, v21, v22

    const/16 v22, 0x4

    aput v9, v21, v22

    const/16 v22, 0x5

    aput v10, v21, v22

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1409
    .restart local v18    # "secondsFirstDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    new-instance v19, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v21, 0xa

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v5, v21, v22

    const/16 v22, 0x1

    aput v6, v21, v22

    const/16 v22, 0x2

    aput v7, v21, v22

    const/16 v22, 0x3

    aput v8, v21, v22

    const/16 v22, 0x4

    aput v9, v21, v22

    const/16 v22, 0x5

    aput v10, v21, v22

    const/16 v22, 0x6

    aput v11, v21, v22

    const/16 v22, 0x7

    aput v12, v21, v22

    const/16 v22, 0x8

    aput v13, v21, v22

    const/16 v22, 0x9

    aput v14, v21, v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1410
    .restart local v19    # "secondsSecondDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1411
    invoke-virtual/range {v18 .. v19}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1414
    new-instance v3, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v6, v21, v22

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1415
    .restart local v3    # "firstDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1417
    invoke-virtual {v3, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1420
    new-instance v17, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v5, v21, v22

    const/16 v22, 0x1

    aput v6, v21, v22

    const/16 v22, 0x2

    aput v7, v21, v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1421
    .restart local v17    # "secondDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1423
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1426
    new-instance v20, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v5, v21, v22

    const/16 v22, 0x1

    aput v6, v21, v22

    const/16 v22, 0x2

    aput v7, v21, v22

    const/16 v22, 0x3

    aput v8, v21, v22

    const/16 v22, 0x4

    aput v9, v21, v22

    const/16 v22, 0x5

    aput v10, v21, v22

    invoke-direct/range {v20 .. v21}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1427
    .restart local v20    # "thirdDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1429
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1433
    new-instance v4, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    const/16 v21, 0xa

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v5, v21, v22

    const/16 v22, 0x1

    aput v6, v21, v22

    const/16 v22, 0x2

    aput v7, v21, v22

    const/16 v22, 0x3

    aput v8, v21, v22

    const/16 v22, 0x4

    aput v9, v21, v22

    const/16 v22, 0x5

    aput v10, v21, v22

    const/16 v22, 0x6

    aput v11, v21, v22

    const/16 v22, 0x7

    aput v12, v21, v22

    const/16 v22, 0x8

    aput v13, v21, v22

    const/16 v22, 0x9

    aput v14, v21, v22

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1434
    .local v4, "fourthDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1436
    invoke-virtual {v4, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1440
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3ab

    .line 1442
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1446
    :cond_3ab
    new-instance v20, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    .end local v20    # "thirdDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v11, v21, v22

    const/16 v22, 0x1

    aput v12, v21, v22

    const/16 v22, 0x2

    aput v13, v21, v22

    const/16 v22, 0x3

    aput v14, v21, v22

    invoke-direct/range {v20 .. v21}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1447
    .restart local v20    # "thirdDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1449
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1453
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3e3

    .line 1455
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1459
    :cond_3e3
    new-instance v17, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    .end local v17    # "secondDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v8, v21, v22

    const/16 v22, 0x1

    aput v9, v21, v22

    const/16 v22, 0x2

    aput v10, v21, v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1460
    .restart local v17    # "secondDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1463
    new-instance v20, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    .end local v20    # "thirdDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    const/16 v21, 0xa

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v5, v21, v22

    const/16 v22, 0x1

    aput v6, v21, v22

    const/16 v22, 0x2

    aput v7, v21, v22

    const/16 v22, 0x3

    aput v8, v21, v22

    const/16 v22, 0x4

    aput v9, v21, v22

    const/16 v22, 0x5

    aput v10, v21, v22

    const/16 v22, 0x6

    aput v11, v21, v22

    const/16 v22, 0x7

    aput v12, v21, v22

    const/16 v22, 0x8

    aput v13, v21, v22

    const/16 v22, 0x9

    aput v14, v21, v22

    invoke-direct/range {v20 .. v21}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1464
    .restart local v20    # "thirdDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1466
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1470
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    move/from16 v21, v0

    if-eqz v21, :cond_455

    .line 1472
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1476
    :cond_455
    new-instance v3, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    .end local v3    # "firstDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    const/16 v21, 0x8

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v7, v21, v22

    const/16 v22, 0x1

    aput v8, v21, v22

    const/16 v22, 0x2

    aput v9, v21, v22

    const/16 v22, 0x3

    aput v10, v21, v22

    const/16 v22, 0x4

    aput v11, v21, v22

    const/16 v22, 0x5

    aput v12, v21, v22

    const/16 v22, 0x6

    aput v13, v21, v22

    const/16 v22, 0x7

    aput v14, v21, v22

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1477
    .restart local v3    # "firstDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1479
    invoke-virtual {v3, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1482
    new-instance v17, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    .end local v17    # "secondDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v5, v21, v22

    const/16 v22, 0x1

    aput v6, v21, v22

    const/16 v22, 0x2

    aput v7, v21, v22

    const/16 v22, 0x3

    aput v8, v21, v22

    const/16 v22, 0x4

    aput v9, v21, v22

    const/16 v22, 0x5

    aput v10, v21, v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1483
    .restart local v17    # "secondDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1486
    new-instance v20, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    .end local v20    # "thirdDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    const/16 v21, 0xa

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v5, v21, v22

    const/16 v22, 0x1

    aput v6, v21, v22

    const/16 v22, 0x2

    aput v7, v21, v22

    const/16 v22, 0x3

    aput v8, v21, v22

    const/16 v22, 0x4

    aput v9, v21, v22

    const/16 v22, 0x5

    aput v10, v21, v22

    const/16 v22, 0x6

    aput v11, v21, v22

    const/16 v22, 0x7

    aput v12, v21, v22

    const/16 v22, 0x8

    aput v13, v21, v22

    const/16 v22, 0x9

    aput v14, v21, v22

    invoke-direct/range {v20 .. v21}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;-><init>([I)V

    .line 1487
    .restart local v20    # "thirdDigit":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1489
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    .line 1493
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    move/from16 v21, v0

    if-eqz v21, :cond_250

    .line 1495
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->addChild(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;)V

    goto/16 :goto_250
.end method

.method private getAmOrPmKeyCode(I)I
    .registers 13
    .param p1, "amOrPm"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, -0x1

    .line 1296
    iget v6, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmKeyCode:I

    if-eq v6, v5, :cond_c

    iget v6, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmKeyCode:I

    if-ne v6, v5, :cond_61

    .line 1298
    :cond_c
    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v3

    .line 1301
    .local v3, "kcm":Landroid/view/KeyCharacterMap;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-ge v2, v6, :cond_61

    .line 1302
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1303
    .local v0, "amChar":C
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1304
    .local v4, "pmChar":C
    if-eq v0, v4, :cond_6e

    .line 1305
    new-array v6, v10, [C

    aput-char v0, v6, v8

    aput-char v4, v6, v9

    invoke-virtual {v3, v6}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v1

    .line 1307
    .local v1, "events":[Landroid/view/KeyEvent;
    if-eqz v1, :cond_66

    array-length v6, v1

    const/4 v7, 0x4

    if-ne v6, v7, :cond_66

    .line 1308
    aget-object v6, v1, v8

    invoke-virtual {v6}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    iput v6, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmKeyCode:I

    .line 1309
    aget-object v6, v1, v10

    invoke-virtual {v6}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    iput v6, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmKeyCode:I

    .line 1317
    .end local v0    # "amChar":C
    .end local v1    # "events":[Landroid/view/KeyEvent;
    .end local v2    # "i":I
    .end local v3    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v4    # "pmChar":C
    :cond_61
    :goto_61
    if-nez p1, :cond_71

    .line 1318
    iget v5, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmKeyCode:I

    .line 1323
    :cond_65
    :goto_65
    return v5

    .line 1311
    .restart local v0    # "amChar":C
    .restart local v1    # "events":[Landroid/view/KeyEvent;
    .restart local v2    # "i":I
    .restart local v3    # "kcm":Landroid/view/KeyCharacterMap;
    .restart local v4    # "pmChar":C
    :cond_66
    const-string v6, "TimePickerDialog"

    const-string v7, "Unable to find keycodes for AM and PM."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 1301
    .end local v1    # "events":[Landroid/view/KeyEvent;
    :cond_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1319
    .end local v0    # "amChar":C
    .end local v2    # "i":I
    .end local v3    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v4    # "pmChar":C
    :cond_71
    if-ne p1, v9, :cond_65

    .line 1320
    iget v5, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmKeyCode:I

    goto :goto_65
.end method

.method private getEnteredTime([Ljava/lang/Boolean;)[I
    .registers 16
    .param p1, "enteredZeros"    # [Ljava/lang/Boolean;

    .prologue
    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v13, 0x1

    .line 1244
    const/4 v0, -0x1

    .line 1245
    .local v0, "amOrPm":I
    const/4 v7, 0x1

    .line 1246
    .local v7, "startIndex":I
    iget-boolean v9, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v9, :cond_2b

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 1247
    iget-object v9, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1248
    .local v3, "keyCode":I
    invoke-direct {p0, v11}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v9

    if-ne v3, v9, :cond_62

    .line 1249
    const/4 v0, 0x0

    .line 1253
    :cond_2a
    :goto_2a
    const/4 v7, 0x2

    .line 1255
    .end local v3    # "keyCode":I
    :cond_2b
    const/4 v4, -0x1

    .line 1256
    .local v4, "minute":I
    const/4 v1, -0x1

    .line 1257
    .local v1, "hour":I
    const/4 v5, 0x0

    .line 1258
    .local v5, "second":I
    iget-boolean v9, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    if-eqz v9, :cond_6a

    move v6, v10

    .line 1259
    .local v6, "shift":I
    :goto_33
    move v2, v7

    .local v2, "i":I
    :goto_34
    iget-object v9, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gt v2, v9, :cond_ae

    .line 1260
    iget-object v9, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v2

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getValFromKeyCode(I)I

    move-result v8

    .line 1261
    .local v8, "val":I
    iget-boolean v9, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    if-eqz v9, :cond_5a

    .line 1262
    if-ne v2, v7, :cond_6c

    .line 1263
    move v5, v8

    .line 1271
    :cond_5a
    :goto_5a
    add-int v9, v7, v6

    if-ne v2, v9, :cond_7e

    .line 1272
    move v4, v8

    .line 1259
    :cond_5f
    :goto_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 1250
    .end local v1    # "hour":I
    .end local v2    # "i":I
    .end local v4    # "minute":I
    .end local v5    # "second":I
    .end local v6    # "shift":I
    .end local v8    # "val":I
    .restart local v3    # "keyCode":I
    :cond_62
    invoke-direct {p0, v13}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v9

    if-ne v3, v9, :cond_2a

    .line 1251
    const/4 v0, 0x1

    goto :goto_2a

    .end local v3    # "keyCode":I
    .restart local v1    # "hour":I
    .restart local v4    # "minute":I
    .restart local v5    # "second":I
    :cond_6a
    move v6, v11

    .line 1258
    goto :goto_33

    .line 1264
    .restart local v2    # "i":I
    .restart local v6    # "shift":I
    .restart local v8    # "val":I
    :cond_6c
    add-int/lit8 v9, v7, 0x1

    if-ne v2, v9, :cond_5a

    .line 1265
    mul-int/lit8 v9, v8, 0xa

    add-int/2addr v5, v9

    .line 1266
    if-eqz p1, :cond_5a

    if-nez v8, :cond_5a

    .line 1267
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, p1, v10

    goto :goto_5a

    .line 1273
    :cond_7e
    add-int v9, v7, v6

    add-int/lit8 v9, v9, 0x1

    if-ne v2, v9, :cond_92

    .line 1274
    mul-int/lit8 v9, v8, 0xa

    add-int/2addr v4, v9

    .line 1275
    if-eqz p1, :cond_5f

    if-nez v8, :cond_5f

    .line 1276
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, p1, v13

    goto :goto_5f

    .line 1278
    :cond_92
    add-int v9, v7, v6

    add-int/lit8 v9, v9, 0x2

    if-ne v2, v9, :cond_9a

    .line 1279
    move v1, v8

    goto :goto_5f

    .line 1280
    :cond_9a
    add-int v9, v7, v6

    add-int/lit8 v9, v9, 0x3

    if-ne v2, v9, :cond_5f

    .line 1281
    mul-int/lit8 v9, v8, 0xa

    add-int/2addr v1, v9

    .line 1282
    if-eqz p1, :cond_5f

    if-nez v8, :cond_5f

    .line 1283
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, p1, v11

    goto :goto_5f

    .line 1288
    .end local v8    # "val":I
    :cond_ae
    const/4 v9, 0x4

    new-array v9, v9, [I

    aput v1, v9, v11

    aput v4, v9, v13

    aput v5, v9, v10

    const/4 v10, 0x3

    aput v0, v9, v10

    return-object v9
.end method

.method private static getValFromKeyCode(I)I
    .registers 2
    .param p0, "keyCode"    # I

    .prologue
    .line 1209
    packed-switch p0, :pswitch_data_1c

    .line 1231
    const/4 v0, -0x1

    :goto_4
    return v0

    .line 1211
    :pswitch_5
    const/4 v0, 0x0

    goto :goto_4

    .line 1213
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_4

    .line 1215
    :pswitch_9
    const/4 v0, 0x2

    goto :goto_4

    .line 1217
    :pswitch_b
    const/4 v0, 0x3

    goto :goto_4

    .line 1219
    :pswitch_d
    const/4 v0, 0x4

    goto :goto_4

    .line 1221
    :pswitch_f
    const/4 v0, 0x5

    goto :goto_4

    .line 1223
    :pswitch_11
    const/4 v0, 0x6

    goto :goto_4

    .line 1225
    :pswitch_13
    const/4 v0, 0x7

    goto :goto_4

    .line 1227
    :pswitch_15
    const/16 v0, 0x8

    goto :goto_4

    .line 1229
    :pswitch_18
    const/16 v0, 0x9

    goto :goto_4

    .line 1209
    nop

    :pswitch_data_1c
    .packed-switch 0x7
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_f
        :pswitch_11
        :pswitch_13
        :pswitch_15
        :pswitch_18
    .end packed-switch
.end method

.method private isTypedTimeFullyLegal()Z
    .registers 7

    .prologue
    const/16 v5, 0x3c

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1120
    iget-boolean v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-eqz v3, :cond_25

    .line 1123
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getEnteredTime([Ljava/lang/Boolean;)[I

    move-result-object v0

    .line 1124
    .local v0, "values":[I
    aget v3, v0, v2

    if-ltz v3, :cond_23

    aget v3, v0, v1

    if-ltz v3, :cond_23

    aget v3, v0, v1

    if-ge v3, v5, :cond_23

    aget v3, v0, v4

    if-ltz v3, :cond_23

    aget v3, v0, v4

    if-ge v3, v5, :cond_23

    .line 1128
    .end local v0    # "values":[I
    :goto_22
    return v1

    .restart local v0    # "values":[I
    :cond_23
    move v1, v2

    .line 1124
    goto :goto_22

    .line 1128
    .end local v0    # "values":[I
    :cond_25
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    :cond_45
    move v2, v1

    :cond_46
    move v1, v2

    goto :goto_22
.end method

.method private isTypedTimeLegalSoFar()Z
    .registers 5

    .prologue
    .line 1106
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mLegalTimesTree:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    .line 1107
    .local v2, "node":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1108
    .local v1, "keyCode":I
    invoke-virtual {v2, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;->canReach(I)Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$Node;

    move-result-object v2

    .line 1109
    if-nez v2, :cond_8

    .line 1110
    const/4 v3, 0x0

    .line 1113
    .end local v1    # "keyCode":I
    :goto_1f
    return v3

    :cond_20
    const/4 v3, 0x1

    goto :goto_1f
.end method

.method public static newInstance(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;IIIZ)Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;
    .registers 11
    .param p0, "callback"    # Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .param p4, "is24HourMode"    # Z

    .prologue
    .line 174
    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;

    invoke-direct {v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;-><init>()V

    .local v0, "ret":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 175
    invoke-virtual/range {v0 .. v5}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->initialize(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;IIIZ)V

    .line 176
    return-object v0
.end method

.method public static newInstance(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;IIZ)Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;
    .registers 5
    .param p0, "callback"    # Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I
    .param p3, "is24HourMode"    # Z

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->newInstance(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;IIIZ)Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;

    move-result-object v0

    return-object v0
.end method

.method private processKeyUp(I)Z
    .registers 10
    .param p1, "keyCode"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 991
    const/16 v4, 0x6f

    if-eq p1, v4, :cond_9

    const/4 v4, 0x4

    if-ne p1, v4, :cond_13

    .line 992
    :cond_9
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isCancelable()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->dismiss()V

    .line 1054
    :cond_12
    :goto_12
    return v2

    .line 994
    :cond_13
    const/16 v4, 0x3d

    if-ne p1, v4, :cond_25

    .line 995
    iget-boolean v4, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-eqz v4, :cond_85

    .line 996
    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 997
    invoke-direct {p0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->finishKbMode(Z)V

    goto :goto_12

    .line 1001
    :cond_25
    const/16 v4, 0x42

    if-ne p1, v4, :cond_57

    .line 1002
    iget-boolean v4, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-eqz v4, :cond_36

    .line 1003
    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1006
    invoke-direct {p0, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->finishKbMode(Z)V

    .line 1008
    :cond_36
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCallback:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;

    if-eqz v3, :cond_53

    .line 1009
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCallback:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;

    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v5

    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v6}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v6

    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v7}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getSeconds()I

    move-result v7

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;->onTimeSet(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;III)V

    .line 1012
    :cond_53
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->dismiss()V

    goto :goto_12

    .line 1014
    :cond_57
    const/16 v4, 0x43

    if-ne p1, v4, :cond_a3

    .line 1015
    iget-boolean v4, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-eqz v4, :cond_85

    .line 1016
    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_85

    .line 1017
    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->deleteLastTypedKey()I

    move-result v0

    .line 1019
    .local v0, "deleted":I
    invoke-direct {p0, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    if-ne v0, v4, :cond_87

    .line 1020
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    .line 1026
    .local v1, "deletedKeyStr":Ljava/lang/String;
    :goto_73
    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDeletedKeyFormat:Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1028
    invoke-direct {p0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->updateDisplay(Z)V

    .end local v0    # "deleted":I
    .end local v1    # "deletedKeyStr":Ljava/lang/String;
    :cond_85
    move v2, v3

    .line 1054
    goto :goto_12

    .line 1021
    .restart local v0    # "deleted":I
    :cond_87
    invoke-direct {p0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    if-ne v0, v4, :cond_90

    .line 1022
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    .restart local v1    # "deletedKeyStr":Ljava/lang/String;
    goto :goto_73

    .line 1024
    .end local v1    # "deletedKeyStr":Ljava/lang/String;
    :cond_90
    const-string v4, "%d"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getValFromKeyCode(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "deletedKeyStr":Ljava/lang/String;
    goto :goto_73

    .line 1031
    .end local v0    # "deleted":I
    .end local v1    # "deletedKeyStr":Ljava/lang/String;
    :cond_a3
    const/4 v4, 0x7

    if-eq p1, v4, :cond_da

    const/16 v4, 0x8

    if-eq p1, v4, :cond_da

    const/16 v4, 0x9

    if-eq p1, v4, :cond_da

    const/16 v4, 0xa

    if-eq p1, v4, :cond_da

    const/16 v4, 0xb

    if-eq p1, v4, :cond_da

    const/16 v4, 0xc

    if-eq p1, v4, :cond_da

    const/16 v4, 0xd

    if-eq p1, v4, :cond_da

    const/16 v4, 0xe

    if-eq p1, v4, :cond_da

    const/16 v4, 0xf

    if-eq p1, v4, :cond_da

    const/16 v4, 0x10

    if-eq p1, v4, :cond_da

    iget-boolean v4, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v4, :cond_85

    invoke-direct {p0, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    if-eq p1, v4, :cond_da

    invoke-direct {p0, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getAmOrPmKeyCode(I)I

    move-result v4

    if-ne p1, v4, :cond_85

    .line 1038
    :cond_da
    iget-boolean v4, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-nez v4, :cond_f5

    .line 1039
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    if-nez v3, :cond_eb

    .line 1041
    const-string v3, "TimePickerDialog"

    const-string v4, "Unable to initiate keyboard mode, TimePicker was null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 1044
    :cond_eb
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1045
    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->tryStartingKbMode(I)V

    goto/16 :goto_12

    .line 1049
    :cond_f5
    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->addKeyIfLegal(I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1050
    invoke-direct {p0, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->updateDisplay(Z)V

    goto/16 :goto_12
.end method

.method private roundToNearest(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .registers 3
    .param p1, "time"    # Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .prologue
    .line 868
    sget-object v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;->HOUR:Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;

    invoke-virtual {p0, p1, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->roundToNearest(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v0

    return-object v0
.end method

.method private setCurrentItemShowing(IZZZ)V
    .registers 16
    .param p1, "index"    # I
    .param p2, "animateCircle"    # Z
    .param p3, "delayLabelAnimate"    # Z
    .param p4, "announce"    # Z

    .prologue
    .line 939
    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v8, p1, p2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setCurrentItemShowing(IZ)V

    .line 942
    packed-switch p1, :pswitch_data_dc

    .line 963
    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v8}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getSeconds()I

    move-result v7

    .line 964
    .local v7, "seconds":I
    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSecondPickerDescription:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 965
    if-eqz p4, :cond_35

    .line 966
    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v9, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectSeconds:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 968
    :cond_35
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSecondView:Landroid/widget/TextView;

    .line 971
    .end local v7    # "seconds":I
    .local v2, "labelToAnimate":Landroid/widget/TextView;
    :goto_37
    if-nez p1, :cond_d0

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectedColor:I

    .line 972
    .local v0, "hourColor":I
    :goto_3b
    const/4 v8, 0x1

    if-ne p1, v8, :cond_d4

    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectedColor:I

    .line 973
    .local v3, "minuteColor":I
    :goto_40
    const/4 v8, 0x2

    if-ne p1, v8, :cond_d8

    iget v6, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectedColor:I

    .line 974
    .local v6, "secondColor":I
    :goto_45
    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 975
    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 976
    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSecondView:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 978
    const v8, 0x3f59999a

    const v9, 0x3f8ccccd

    invoke-static {v2, v8, v9}, Lcom/wdullaer/materialdatetimepicker/Utils;->getPulseAnimator(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 979
    .local v5, "pulseAnimator":Landroid/animation/ObjectAnimator;
    if-eqz p3, :cond_65

    .line 980
    const-wide/16 v8, 0x12c

    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 982
    :cond_65
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 983
    return-void

    .line 944
    .end local v0    # "hourColor":I
    .end local v2    # "labelToAnimate":Landroid/widget/TextView;
    .end local v3    # "minuteColor":I
    .end local v5    # "pulseAnimator":Landroid/animation/ObjectAnimator;
    .end local v6    # "secondColor":I
    :pswitch_69
    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v8}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v1

    .line 945
    .local v1, "hours":I
    iget-boolean v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v8, :cond_75

    .line 946
    rem-int/lit8 v1, v1, 0xc

    .line 948
    :cond_75
    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourPickerDescription:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 949
    if-eqz p4, :cond_9c

    .line 950
    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v9, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectHours:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 952
    :cond_9c
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    .line 953
    .restart local v2    # "labelToAnimate":Landroid/widget/TextView;
    goto :goto_37

    .line 955
    .end local v1    # "hours":I
    .end local v2    # "labelToAnimate":Landroid/widget/TextView;
    :pswitch_9f
    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v8}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v4

    .line 956
    .local v4, "minutes":I
    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinutePickerDescription:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 957
    if-eqz p4, :cond_cc

    .line 958
    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v9, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectMinutes:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 960
    :cond_cc
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    .line 961
    .restart local v2    # "labelToAnimate":Landroid/widget/TextView;
    goto/16 :goto_37

    .line 971
    .end local v4    # "minutes":I
    :cond_d0
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    goto/16 :goto_3b

    .line 972
    .restart local v0    # "hourColor":I
    :cond_d4
    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    goto/16 :goto_40

    .line 973
    .restart local v3    # "minuteColor":I
    :cond_d8
    iget v6, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    goto/16 :goto_45

    .line 942
    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_69
        :pswitch_9f
    .end packed-switch
.end method

.method private setHour(IZ)V
    .registers 8
    .param p1, "value"    # I
    .param p2, "announce"    # Z

    .prologue
    .line 898
    iget-boolean v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-eqz v2, :cond_26

    .line 899
    const-string v0, "%02d"

    .line 908
    .local v0, "format":Ljava/lang/String;
    :cond_6
    :goto_6
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 909
    .local v1, "text":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 910
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourSpaceView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 911
    if-eqz p2, :cond_25

    .line 912
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v2, v1}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 914
    :cond_25
    return-void

    .line 901
    .end local v0    # "format":Ljava/lang/String;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_26
    const-string v0, "%d"

    .line 902
    .restart local v0    # "format":Ljava/lang/String;
    rem-int/lit8 p1, p1, 0xc

    .line 903
    if-nez p1, :cond_6

    .line 904
    const/16 p1, 0xc

    goto :goto_6
.end method

.method private setMinute(I)V
    .registers 8
    .param p1, "value"    # I

    .prologue
    .line 917
    const/16 v1, 0x3c

    if-ne p1, v1, :cond_5

    .line 918
    const/4 p1, 0x0

    .line 920
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%02d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 921
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v1, v0}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 922
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 923
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinuteSpaceView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 924
    return-void
.end method

.method private setSecond(I)V
    .registers 8
    .param p1, "value"    # I

    .prologue
    .line 927
    const/16 v1, 0x3c

    if-ne p1, v1, :cond_5

    .line 928
    const/4 p1, 0x0

    .line 930
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%02d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 931
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v1, v0}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 932
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSecondView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 933
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSecondSpaceView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 934
    return-void
.end method

.method private tryStartingKbMode(I)V
    .registers 4
    .param p1, "keyCode"    # I

    .prologue
    const/4 v1, 0x0

    .line 1065
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->trySettingInputEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, -0x1

    if-eq p1, v0, :cond_12

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->addKeyIfLegal(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1067
    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    .line 1068
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1069
    invoke-direct {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->updateDisplay(Z)V

    .line 1071
    :cond_1d
    return-void
.end method

.method private updateAmPmDisplay(I)V
    .registers 4
    .param p1, "amOrPm"    # I

    .prologue
    .line 707
    if-nez p1, :cond_18

    .line 708
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 709
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 710
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmPmHitspace:Landroid/view/View;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 718
    :goto_17
    return-void

    .line 711
    :cond_18
    const/4 v0, 0x1

    if-ne p1, v0, :cond_31

    .line 712
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 714
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmPmHitspace:Landroid/view/View;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 716
    :cond_31
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_17
.end method

.method private updateDisplay(Z)V
    .registers 17
    .param p1, "allowEmptyDisplay"    # Z

    .prologue
    .line 1169
    if-nez p1, :cond_47

    iget-object v11, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_47

    .line 1170
    iget-object v11, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v11}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v1

    .line 1171
    .local v1, "hour":I
    iget-object v11, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v11}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v4

    .line 1172
    .local v4, "minute":I
    iget-object v11, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v11}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getSeconds()I

    move-result v7

    .line 1173
    .local v7, "second":I
    const/4 v11, 0x1

    invoke-direct {p0, v1, v11}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setHour(IZ)V

    .line 1174
    invoke-direct {p0, v4}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setMinute(I)V

    .line 1175
    invoke-direct {p0, v7}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setSecond(I)V

    .line 1176
    iget-boolean v11, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v11, :cond_32

    .line 1177
    const/16 v11, 0xc

    if-ge v1, v11, :cond_45

    const/4 v11, 0x0

    :goto_2f
    invoke-direct {p0, v11}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->updateAmPmDisplay(I)V

    .line 1179
    :cond_32
    iget-object v11, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v11}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v11

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct {p0, v11, v12, v13, v14}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setCurrentItemShowing(IZZZ)V

    .line 1180
    iget-object v11, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1206
    .end local v1    # "hour":I
    .end local v4    # "minute":I
    .end local v7    # "second":I
    :cond_44
    :goto_44
    return-void

    .line 1177
    .restart local v1    # "hour":I
    .restart local v4    # "minute":I
    .restart local v7    # "second":I
    :cond_45
    const/4 v11, 0x1

    goto :goto_2f

    .line 1182
    .end local v1    # "hour":I
    .end local v4    # "minute":I
    .end local v7    # "second":I
    :cond_47
    const/4 v11, 0x3

    new-array v0, v11, [Ljava/lang/Boolean;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v0, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v0, v11

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v0, v11

    .line 1183
    .local v0, "enteredZeros":[Ljava/lang/Boolean;
    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getEnteredTime([Ljava/lang/Boolean;)[I

    move-result-object v10

    .line 1184
    .local v10, "values":[I
    const/4 v11, 0x0

    aget-object v11, v0, v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_de

    const-string v2, "%02d"

    .line 1185
    .local v2, "hourFormat":Ljava/lang/String;
    :goto_71
    const/4 v11, 0x1

    aget-object v11, v0, v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_e1

    const-string v5, "%02d"

    .line 1186
    .local v5, "minuteFormat":Ljava/lang/String;
    :goto_7c
    const/4 v11, 0x1

    aget-object v11, v0, v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_e4

    const-string v8, "%02d"

    .line 1187
    .local v8, "secondFormat":Ljava/lang/String;
    :goto_87
    const/4 v11, 0x0

    aget v11, v10, v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_e7

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    .line 1189
    .local v3, "hourStr":Ljava/lang/String;
    :goto_8f
    const/4 v11, 0x1

    aget v11, v10, v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_101

    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    .line 1191
    .local v6, "minuteStr":Ljava/lang/String;
    :goto_97
    const/4 v11, 0x2

    aget v11, v10, v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_11c

    iget-object v9, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    .line 1193
    .local v9, "secondStr":Ljava/lang/String;
    :goto_9f
    iget-object v11, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1194
    iget-object v11, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourSpaceView:Landroid/widget/TextView;

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1195
    iget-object v11, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    iget v12, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1196
    iget-object v11, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1197
    iget-object v11, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinuteSpaceView:Landroid/widget/TextView;

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1198
    iget-object v11, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    iget v12, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1199
    iget-object v11, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSecondView:Landroid/widget/TextView;

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1200
    iget-object v11, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSecondSpaceView:Landroid/widget/TextView;

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1201
    iget-object v11, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSecondView:Landroid/widget/TextView;

    iget v12, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1202
    iget-boolean v11, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v11, :cond_44

    .line 1203
    const/4 v11, 0x3

    aget v11, v10, v11

    invoke-direct {p0, v11}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->updateAmPmDisplay(I)V

    goto/16 :goto_44

    .line 1184
    .end local v2    # "hourFormat":Ljava/lang/String;
    .end local v3    # "hourStr":Ljava/lang/String;
    .end local v5    # "minuteFormat":Ljava/lang/String;
    .end local v6    # "minuteStr":Ljava/lang/String;
    .end local v8    # "secondFormat":Ljava/lang/String;
    .end local v9    # "secondStr":Ljava/lang/String;
    :cond_de
    const-string v2, "%2d"

    goto :goto_71

    .line 1185
    .restart local v2    # "hourFormat":Ljava/lang/String;
    :cond_e1
    const-string v5, "%2d"

    goto :goto_7c

    .line 1186
    .restart local v5    # "minuteFormat":Ljava/lang/String;
    :cond_e4
    const-string v8, "%2d"

    goto :goto_87

    .line 1187
    .restart local v8    # "secondFormat":Ljava/lang/String;
    :cond_e7
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x0

    aget v13, v10, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v2, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x20

    iget-char v13, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPlaceholderText:C

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    goto :goto_8f

    .line 1189
    .restart local v3    # "hourStr":Ljava/lang/String;
    :cond_101
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x1

    aget v13, v10, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v5, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x20

    iget-char v13, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPlaceholderText:C

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_97

    .line 1191
    .restart local v6    # "minuteStr":Ljava/lang/String;
    :cond_11c
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x1

    aget v13, v10, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x20

    iget-char v13, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPlaceholderText:C

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_9f
.end method


# virtual methods
.method public advancePicker(I)V
    .registers 6
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 763
    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAllowAutoAdvance:Z

    if-nez v1, :cond_7

    .line 775
    :cond_6
    :goto_6
    return-void

    .line 764
    :cond_7
    if-nez p1, :cond_31

    .line 765
    invoke-direct {p0, v2, v2, v2, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setCurrentItemShowing(IZZZ)V

    .line 767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectHours:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 768
    .local v0, "announcement":Ljava/lang/String;
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v1, v0}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 769
    .end local v0    # "announcement":Ljava/lang/String;
    :cond_31
    if-ne p1, v2, :cond_6

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    if-eqz v1, :cond_6

    .line 770
    const/4 v1, 0x2

    invoke-direct {p0, v1, v2, v2, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setCurrentItemShowing(IZZZ)V

    .line 772
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectMinutes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getSeconds()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 773
    .restart local v0    # "announcement":Ljava/lang/String;
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-static {v1, v0}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_6
.end method

.method public dismissOnPause(Z)V
    .registers 2
    .param p1, "dismissOnPause"    # Z

    .prologue
    .line 269
    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDismissOnPause:Z

    .line 270
    return-void
.end method

.method public enablePicker()V
    .registers 2

    .prologue
    .line 779
    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 780
    :cond_b
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->finishKbMode(Z)V

    .line 781
    return-void
.end method

.method public enableSeconds(Z)V
    .registers 2
    .param p1, "enableSeconds"    # Z

    .prologue
    .line 277
    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    .line 278
    return-void
.end method

.method public getAccentColor()I
    .registers 2

    .prologue
    .line 253
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public initialize(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;IIIZ)V
    .registers 8
    .param p1, "callback"    # Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I
    .param p4, "second"    # I
    .param p5, "is24HourMode"    # Z

    .prologue
    const/4 v1, 0x0

    .line 186
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCallback:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;

    .line 188
    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-direct {v0, p2, p3, p4}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInitialTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .line 189
    iput-boolean p5, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    .line 190
    iput-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    .line 191
    const-string v0, ""

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTitle:Ljava/lang/String;

    .line 192
    iput-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mThemeDark:Z

    .line 193
    iput-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mThemeDarkChanged:Z

    .line 194
    const/4 v0, -0x1

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:I

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mVibrate:Z

    .line 196
    iput-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDismissOnPause:Z

    .line 197
    iput-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    .line 198
    sget v0, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_ok:I

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkResid:I

    .line 199
    sget v0, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_cancel:I

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelResid:I

    .line 200
    return-void
.end method

.method public is24HourMode()Z
    .registers 2

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    return v0
.end method

.method public isAmDisabled()Z
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 836
    new-instance v3, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    const/16 v7, 0xc

    invoke-direct {v3, v7}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(I)V

    .line 838
    .local v3, "midday":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v7, :cond_16

    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v7, v3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result v7

    if-lez v7, :cond_16

    .line 845
    :cond_15
    :goto_15
    return v5

    .line 840
    :cond_16
    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectableTimes:[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v7, :cond_2d

    .line 841
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectableTimes:[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .local v0, "arr$":[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1e
    if-ge v1, v2, :cond_15

    aget-object v4, v0, v1

    .local v4, "t":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    invoke-virtual {v4, v3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result v7

    if-gez v7, :cond_2a

    move v5, v6

    goto :goto_15

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .end local v0    # "arr$":[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "t":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    :cond_2d
    move v5, v6

    .line 845
    goto :goto_15
.end method

.method public isOutOfRange(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)Z
    .registers 5
    .param p1, "current"    # Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 784
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v2, p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result v2

    if-lez v2, :cond_f

    .line 790
    :cond_e
    :goto_e
    return v0

    .line 786
    :cond_f
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMaxTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMaxTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v2, p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result v2

    if-ltz v2, :cond_e

    .line 788
    :cond_1b
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectableTimes:[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectableTimes:[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    move v0, v1

    goto :goto_e

    :cond_2d
    move v0, v1

    .line 790
    goto :goto_e
.end method

.method public isOutOfRange(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;I)Z
    .registers 14
    .param p1, "current"    # Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .param p2, "index"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 795
    if-nez p1, :cond_5

    .line 831
    :cond_4
    :goto_4
    return v6

    .line 797
    :cond_5
    if-nez p2, :cond_48

    .line 798
    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v8, :cond_19

    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v8}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v8

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v9

    if-le v8, v9, :cond_19

    move v6, v7

    goto :goto_4

    .line 800
    :cond_19
    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMaxTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v8, :cond_2d

    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMaxTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v8}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v9

    if-gt v8, v9, :cond_2d

    move v6, v7

    goto :goto_4

    .line 802
    :cond_2d
    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectableTimes:[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v8, :cond_4

    .line 803
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectableTimes:[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .local v0, "arr$":[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_35
    if-ge v1, v2, :cond_46

    aget-object v5, v0, v1

    .line 804
    .local v5, "t":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v8

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v9

    if-eq v8, v9, :cond_4

    .line 803
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .end local v5    # "t":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    :cond_46
    move v6, v7

    .line 806
    goto :goto_4

    .line 811
    .end local v0    # "arr$":[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :cond_48
    if-ne p2, v7, :cond_ad

    .line 812
    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v8, :cond_67

    .line 813
    new-instance v4, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v8}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v8

    iget-object v9, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v9}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v9

    invoke-direct {v4, v8, v9}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(II)V

    .line 814
    .local v4, "roundedMin":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    invoke-virtual {v4, p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result v8

    if-lez v8, :cond_67

    move v6, v7

    goto :goto_4

    .line 817
    .end local v4    # "roundedMin":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    :cond_67
    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMaxTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v8, :cond_87

    .line 818
    new-instance v3, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMaxTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v8}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v8

    iget-object v9, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMaxTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v9}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v9

    const/16 v10, 0x3b

    invoke-direct {v3, v8, v9, v10}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    .line 819
    .local v3, "roundedMax":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    invoke-virtual {v3, p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result v8

    if-gez v8, :cond_87

    move v6, v7

    goto/16 :goto_4

    .line 822
    .end local v3    # "roundedMax":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    :cond_87
    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectableTimes:[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v8, :cond_4

    .line 823
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectableTimes:[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .restart local v0    # "arr$":[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_8f
    if-ge v1, v2, :cond_aa

    aget-object v5, v0, v1

    .line 824
    .restart local v5    # "t":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v8

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v9

    if-ne v8, v9, :cond_a7

    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v8

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v9

    if-eq v8, v9, :cond_4

    .line 823
    :cond_a7
    add-int/lit8 v1, v1, 0x1

    goto :goto_8f

    .end local v5    # "t":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    :cond_aa
    move v6, v7

    .line 826
    goto/16 :goto_4

    .line 831
    .end local v0    # "arr$":[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :cond_ad
    invoke-virtual {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isOutOfRange(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)Z

    move-result v6

    goto/16 :goto_4
.end method

.method public isPmDisabled()Z
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 850
    new-instance v3, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    const/16 v7, 0xc

    invoke-direct {v3, v7}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(I)V

    .line 852
    .local v3, "midday":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMaxTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v7, :cond_16

    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMaxTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v7, v3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result v7

    if-gez v7, :cond_16

    .line 859
    :cond_15
    :goto_15
    return v5

    .line 854
    :cond_16
    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectableTimes:[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v7, :cond_2d

    .line 855
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectableTimes:[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .local v0, "arr$":[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1e
    if-ge v1, v2, :cond_15

    aget-object v4, v0, v1

    .local v4, "t":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    invoke-virtual {v4, v3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result v7

    if-ltz v7, :cond_2a

    move v5, v6

    goto :goto_15

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .end local v0    # "arr$":[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "t":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    :cond_2d
    move v5, v6

    .line 859
    goto :goto_15
.end method

.method public isThemeDark()Z
    .registers 2

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mThemeDark:Z

    return v0
.end method

.method public notifyOnDateListener()V
    .registers 6

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCallback:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_1d

    .line 1550
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCallback:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v2

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v3}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v3

    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v4}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getSeconds()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;->onTimeSet(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;III)V

    .line 1552
    :cond_1d
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 691
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 692
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 693
    :cond_c
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 423
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 424
    if-eqz p1, :cond_a7

    const-string v0, "initial_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a7

    const-string v0, "is_24_hour_view"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 426
    const-string v0, "initial_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInitialTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .line 427
    const-string v0, "is_24_hour_view"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    .line 428
    const-string v0, "in_kb_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    .line 429
    const-string v0, "dialog_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTitle:Ljava/lang/String;

    .line 430
    const-string v0, "theme_dark"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mThemeDark:Z

    .line 431
    const-string v0, "theme_dark_changed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mThemeDarkChanged:Z

    .line 432
    const-string v0, "accent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:I

    .line 433
    const-string v0, "vibrate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mVibrate:Z

    .line 434
    const-string v0, "dismiss"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDismissOnPause:Z

    .line 435
    const-string v0, "selectable_times"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    check-cast v0, [Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectableTimes:[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .line 436
    const-string v0, "min_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .line 437
    const-string v0, "max_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMaxTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .line 438
    const-string v0, "enable_seconds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    .line 439
    const-string v0, "ok_resid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkResid:I

    .line 440
    const-string v0, "ok_string"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkString:Ljava/lang/String;

    .line 441
    const-string v0, "cancel_resid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelResid:I

    .line 442
    const-string v0, "cancel_string"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelString:Ljava/lang/String;

    .line 444
    :cond_a7
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 671
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 672
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 673
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 28
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 450
    sget v20, Lcom/wdullaer/materialdatetimepicker/R$layout;->mdtp_time_picker_dialog:I

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, p2

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    .line 451
    .local v19, "view":Landroid/view/View;
    new-instance v11, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$KeyboardListener;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v11, v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$KeyboardListener;-><init>(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$1;)V

    .line 452
    .local v11, "keyboardListener":Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$KeyboardListener;
    sget v20, Lcom/wdullaer/materialdatetimepicker/R$id;->time_picker_dialog:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 455
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_42

    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/wdullaer/materialdatetimepicker/Utils;->getAccentColorFromThemeIfAvailable(Landroid/content/Context;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:I

    .line 460
    :cond_42
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mThemeDarkChanged:Z

    move/from16 v20, v0

    if-nez v20, :cond_5e

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mThemeDark:Z

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/wdullaer/materialdatetimepicker/Utils;->isDarkTheme(Landroid/content/Context;Z)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mThemeDark:Z

    .line 464
    :cond_5e
    invoke-virtual/range {p0 .. p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 465
    .local v15, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 466
    .local v8, "context":Landroid/content/Context;
    sget v20, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_hour_picker_description:I

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourPickerDescription:Ljava/lang/String;

    .line 467
    sget v20, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_select_hours:I

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectHours:Ljava/lang/String;

    .line 468
    sget v20, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_minute_picker_description:I

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinutePickerDescription:Ljava/lang/String;

    .line 469
    sget v20, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_select_minutes:I

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectMinutes:Ljava/lang/String;

    .line 470
    sget v20, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_second_picker_description:I

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSecondPickerDescription:Ljava/lang/String;

    .line 471
    sget v20, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_select_seconds:I

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectSeconds:Ljava/lang/String;

    .line 472
    sget v20, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_white:I

    move/from16 v0, v20

    invoke-static {v8, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectedColor:I

    .line 473
    sget v20, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_accent_color_focused:I

    move/from16 v0, v20

    invoke-static {v8, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mUnselectedColor:I

    .line 475
    sget v20, Lcom/wdullaer/materialdatetimepicker/R$id;->hours:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 477
    sget v20, Lcom/wdullaer/materialdatetimepicker/R$id;->hour_space:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourSpaceView:Landroid/widget/TextView;

    .line 478
    sget v20, Lcom/wdullaer/materialdatetimepicker/R$id;->minutes_space:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinuteSpaceView:Landroid/widget/TextView;

    .line 479
    sget v20, Lcom/wdullaer/materialdatetimepicker/R$id;->minutes:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 481
    sget v20, Lcom/wdullaer/materialdatetimepicker/R$id;->seconds_space:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSecondSpaceView:Landroid/widget/TextView;

    .line 482
    sget v20, Lcom/wdullaer/materialdatetimepicker/R$id;->seconds:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSecondView:Landroid/widget/TextView;

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSecondView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 484
    sget v20, Lcom/wdullaer/materialdatetimepicker/R$id;->ampm_label:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 486
    new-instance v20, Ljava/text/DateFormatSymbols;

    invoke-direct/range {v20 .. v20}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual/range {v20 .. v20}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v5

    .line 487
    .local v5, "amPmTexts":[Ljava/lang/String;
    const/16 v20, 0x0

    aget-object v20, v5, v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmText:Ljava/lang/String;

    .line 488
    const/16 v20, 0x1

    aget-object v20, v5, v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmText:Ljava/lang/String;

    .line 490
    new-instance v20, Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;

    invoke-virtual/range {p0 .. p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHapticFeedbackController:Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInitialTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->roundToNearest(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInitialTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .line 493
    sget v20, Lcom/wdullaer/materialdatetimepicker/R$id;->time_picker:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setOnValueSelectedListener(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInitialTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    move/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    move-object/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->initialize(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Z)V

    .line 498
    const/4 v9, 0x0

    .line 499
    .local v9, "currentItemShowing":I
    if-eqz p3, :cond_206

    const-string v20, "current_item_showing"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_206

    .line 501
    const-string v20, "current_item_showing"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 503
    :cond_206
    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v9, v1, v2, v3}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setCurrentItemShowing(IZZZ)V

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->invalidate()V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    new-instance v21, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$1;-><init>(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinuteView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    new-instance v21, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$2;-><init>(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSecondView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    new-instance v21, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$3;-><init>(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    sget v20, Lcom/wdullaer/materialdatetimepicker/R$id;->ok:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Button;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    new-instance v21, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$4;-><init>(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const-string v21, "Roboto-Medium"

    move-object/from16 v0, v21

    invoke-static {v8, v0}, Lcom/wdullaer/materialdatetimepicker/TypefaceHelper;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkString:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4f3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkString:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 546
    :goto_2a9
    sget v20, Lcom/wdullaer/materialdatetimepicker/R$id;->cancel:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Button;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelButton:Landroid/widget/Button;

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    new-instance v21, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$5;-><init>(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    const-string v21, "Roboto-Medium"

    move-object/from16 v0, v21

    invoke-static {v8, v0}, Lcom/wdullaer/materialdatetimepicker/TypefaceHelper;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelString:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_504

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelString:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 557
    :goto_2f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->isCancelable()Z

    move-result v20

    if-eqz v20, :cond_515

    const/16 v20, 0x0

    :goto_2ff
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 560
    sget v20, Lcom/wdullaer/materialdatetimepicker/R$id;->ampm_hitspace:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmPmHitspace:Landroid/view/View;

    .line 561
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_519

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 585
    :goto_325
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    move/from16 v20, v0

    if-nez v20, :cond_343

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSecondSpaceView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 587
    sget v20, Lcom/wdullaer/materialdatetimepicker/R$id;->separator_seconds:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 591
    :cond_343
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_550

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    move/from16 v20, v0

    if-nez v20, :cond_550

    .line 593
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v20, -0x2

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v14, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 595
    .local v14, "paramsSeparator":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v20, 0xd

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 596
    sget v20, Lcom/wdullaer/materialdatetimepicker/R$id;->separator:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 597
    .local v17, "separatorView":Landroid/widget/TextView;
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 622
    .end local v14    # "paramsSeparator":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v17    # "separatorView":Landroid/widget/TextView;
    :cond_374
    :goto_374
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAllowAutoAdvance:Z

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInitialTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v20

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setHour(IZ)V

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInitialTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setMinute(I)V

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInitialTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setSecond(I)V

    .line 628
    sget v20, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_time_placeholder:I

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    .line 629
    sget v20, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_deleted_key:I

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDeletedKeyFormat:Ljava/lang/String;

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDoublePlaceholderText:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->charAt(I)C

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPlaceholderText:C

    .line 631
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mPmKeyCode:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmKeyCode:I

    .line 632
    invoke-direct/range {p0 .. p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->generateLegalTimesTree()V

    .line 633
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5d4

    .line 634
    const-string v20, "typed_times"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    .line 635
    const/16 v20, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->tryStartingKbMode(I)V

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->invalidate()V

    .line 642
    :cond_41c
    :goto_41c
    sget v20, Lcom/wdullaer/materialdatetimepicker/R$id;->time_picker_header:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 643
    .local v18, "timePickerHeader":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTitle:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_44e

    .line 644
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTitle:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    :cond_44e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setTextColor(I)V

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setTextColor(I)V

    .line 651
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/wdullaer/materialdatetimepicker/Utils;->darkenColor(I)I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 652
    sget v20, Lcom/wdullaer/materialdatetimepicker/R$id;->time_display_background:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackgroundColor(I)V

    .line 653
    sget v20, Lcom/wdullaer/materialdatetimepicker/R$id;->time_display:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackgroundColor(I)V

    .line 655
    invoke-virtual/range {p0 .. p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v20

    if-nez v20, :cond_4ac

    .line 656
    sget v20, Lcom/wdullaer/materialdatetimepicker/R$id;->done_background:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 659
    :cond_4ac
    sget v20, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_circle_background:I

    move/from16 v0, v20

    invoke-static {v8, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    .line 660
    .local v7, "circleBackground":I
    sget v20, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_background_color:I

    move/from16 v0, v20

    invoke-static {v8, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    .line 661
    .local v6, "backgroundColor":I
    sget v20, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_light_gray:I

    move/from16 v0, v20

    invoke-static {v8, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    .line 662
    .local v10, "darkBackgroundColor":I
    sget v20, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_light_gray:I

    move/from16 v0, v20

    invoke-static {v8, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v12

    .line 664
    .local v12, "lightGray":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mThemeDark:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5e9

    .end local v12    # "lightGray":I
    :goto_4da
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setBackgroundColor(I)V

    .line 665
    sget v20, Lcom/wdullaer/materialdatetimepicker/R$id;->time_picker_dialog:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mThemeDark:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5ec

    .end local v10    # "darkBackgroundColor":I
    :goto_4ed
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 666
    return-object v19

    .line 544
    .end local v6    # "backgroundColor":I
    .end local v7    # "circleBackground":I
    .end local v18    # "timePickerHeader":Landroid/widget/TextView;
    :cond_4f3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkResid:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_2a9

    .line 556
    :cond_504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelResid:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_2f1

    .line 557
    :cond_515
    const/16 v20, 0x8

    goto/16 :goto_2ff

    .line 564
    :cond_519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmPmTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInitialTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->isAM()Z

    move-result v20

    if-eqz v20, :cond_54d

    const/16 v20, 0x0

    :goto_532
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->updateAmPmDisplay(I)V

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAmPmHitspace:Landroid/view/View;

    move-object/from16 v20, v0

    new-instance v21, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$6;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$6;-><init>(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_325

    .line 565
    :cond_54d
    const/16 v20, 0x1

    goto :goto_532

    .line 598
    :cond_550
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    move/from16 v20, v0

    if-eqz v20, :cond_374

    .line 600
    sget v20, Lcom/wdullaer/materialdatetimepicker/R$id;->separator:I

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 601
    .local v16, "separator":Landroid/view/View;
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v20, -0x2

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v14, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 603
    .restart local v14    # "paramsSeparator":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v20, 0x0

    sget v21, Lcom/wdullaer/materialdatetimepicker/R$id;->minutes_space:I

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 604
    const/16 v20, 0xf

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 605
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 607
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    move/from16 v20, v0

    if-nez v20, :cond_5af

    .line 609
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v20, -0x2

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 611
    .local v13, "paramsMinutes":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v20, 0xd

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinuteSpaceView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_374

    .line 615
    .end local v13    # "paramsMinutes":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5af
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v20, -0x2

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 617
    .restart local v13    # "paramsMinutes":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v20, 0x1

    sget v21, Lcom/wdullaer/materialdatetimepicker/R$id;->center_view:I

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinuteSpaceView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_374

    .line 637
    .end local v13    # "paramsMinutes":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v14    # "paramsSeparator":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v16    # "separator":Landroid/view/View;
    :cond_5d4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-nez v20, :cond_41c

    .line 638
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    goto/16 :goto_41c

    .restart local v6    # "backgroundColor":I
    .restart local v7    # "circleBackground":I
    .restart local v10    # "darkBackgroundColor":I
    .restart local v12    # "lightGray":I
    .restart local v18    # "timePickerHeader":Landroid/widget/TextView;
    :cond_5e9
    move v12, v7

    .line 664
    goto/16 :goto_4da

    .end local v12    # "lightGray":I
    :cond_5ec
    move v10, v6

    .line 665
    goto/16 :goto_4ed
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 697
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 698
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 699
    :cond_c
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 684
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 685
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHapticFeedbackController:Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;->stop()V

    .line 686
    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDismissOnPause:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->dismiss()V

    .line 687
    :cond_f
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 678
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 679
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHapticFeedbackController:Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;->start()V

    .line 680
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 722
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    if-eqz v0, :cond_95

    .line 723
    const-string v0, "initial_time"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getTime()Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 724
    const-string v0, "is_24_hour_view"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 725
    const-string v0, "current_item_showing"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 726
    const-string v0, "in_kb_mode"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 727
    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    if-eqz v0, :cond_33

    .line 728
    const-string v0, "typed_times"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTypedTimes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 730
    :cond_33
    const-string v0, "dialog_title"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    const-string v0, "theme_dark"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mThemeDark:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 732
    const-string v0, "theme_dark_changed"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mThemeDarkChanged:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 733
    const-string v0, "accent"

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 734
    const-string v0, "vibrate"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mVibrate:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 735
    const-string v0, "dismiss"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mDismissOnPause:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 736
    const-string v0, "selectable_times"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectableTimes:[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 737
    const-string v0, "min_time"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 738
    const-string v0, "max_time"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMaxTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 739
    const-string v0, "enable_seconds"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mEnableSeconds:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 740
    const-string v0, "ok_resid"

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkResid:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 741
    const-string v0, "ok_string"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const-string v0, "cancel_resid"

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelResid:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 743
    const-string v0, "cancel_string"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    :cond_95
    return-void
.end method

.method public onValueSelected(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V
    .registers 6
    .param p1, "newValue"    # Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .prologue
    const/4 v0, 0x0

    .line 752
    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setHour(IZ)V

    .line 753
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHourPickerDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 754
    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setMinute(I)V

    .line 755
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinutePickerDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 756
    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setSecond(I)V

    .line 757
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSecondPickerDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 758
    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mIs24HourMode:Z

    if-nez v1, :cond_89

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->isAM()Z

    move-result v1

    if-eqz v1, :cond_8a

    :goto_86
    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->updateAmPmDisplay(I)V

    .line 759
    :cond_89
    return-void

    .line 758
    :cond_8a
    const/4 v0, 0x1

    goto :goto_86
.end method

.method public roundToNearest(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .registers 12
    .param p1, "time"    # Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .param p2, "type"    # Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;

    .prologue
    .line 874
    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v7, p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result v7

    if-lez v7, :cond_f

    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .line 893
    :cond_e
    :goto_e
    return-object v5

    .line 876
    :cond_f
    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMaxTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v7, :cond_1e

    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMaxTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v7, p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result v7

    if-gez v7, :cond_1e

    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMaxTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    goto :goto_e

    .line 877
    :cond_1e
    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectableTimes:[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v7, :cond_64

    .line 878
    const v1, 0x7fffffff

    .line 879
    .local v1, "currentDistance":I
    move-object v5, p1

    .line 880
    .local v5, "output":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectableTimes:[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .local v0, "arr$":[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2a
    if-ge v2, v3, :cond_e

    aget-object v6, v0, v2

    .line 881
    .local v6, "t":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    sget-object v7, Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;->MINUTE:Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;

    if-ne p2, v7, :cond_3f

    invoke-virtual {v6}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v7

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v8

    if-eq v7, v8, :cond_3f

    .line 880
    :cond_3c
    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 882
    :cond_3f
    sget-object v7, Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;->SECOND:Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;

    if-ne p2, v7, :cond_57

    invoke-virtual {v6}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v7

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v8

    if-eq v7, v8, :cond_57

    invoke-virtual {v6}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v7

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v8

    if-ne v7, v8, :cond_3c

    .line 883
    :cond_57
    invoke-virtual {v6, p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 884
    .local v4, "newDistance":I
    if-ge v4, v1, :cond_e

    .line 885
    move v1, v4

    .line 886
    move-object v5, v6

    goto :goto_3c

    .end local v0    # "arr$":[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .end local v1    # "currentDistance":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "newDistance":I
    .end local v5    # "output":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .end local v6    # "t":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    :cond_64
    move-object v5, p1

    .line 893
    goto :goto_e
.end method

.method public setAccentColor(I)V
    .registers 6
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 238
    const/16 v0, 0xff

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:I

    .line 239
    return-void
.end method

.method public setAccentColor(Ljava/lang/String;)V
    .registers 4
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 227
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mAccentColor:I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6} :catch_7

    .line 231
    return-void

    .line 228
    :catch_7
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0
.end method

.method public setCancelText(I)V
    .registers 3
    .param p1, "cancelResid"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelString:Ljava/lang/String;

    .line 418
    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelResid:I

    .line 419
    return-void
.end method

.method public setCancelText(Ljava/lang/String;)V
    .registers 2
    .param p1, "cancelString"    # Ljava/lang/String;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCancelString:Ljava/lang/String;

    .line 409
    return-void
.end method

.method public setMaxTime(III)V
    .registers 5
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .prologue
    .line 293
    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-direct {v0, p1, p2, p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setMaxTime(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V

    .line 294
    return-void
.end method

.method public setMaxTime(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V
    .registers 4
    .param p1, "maxTime"    # Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {p1, v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result v0

    if-gez v0, :cond_14

    .line 298
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum time must be greater than the minimum time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_14
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMaxTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .line 300
    return-void
.end method

.method public setMinTime(III)V
    .registers 5
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .prologue
    .line 282
    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-direct {v0, p1, p2, p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setMinTime(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V

    .line 283
    return-void
.end method

.method public setMinTime(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V
    .registers 4
    .param p1, "minTime"    # Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMaxTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMaxTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {p1, v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->compareTo(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)I

    move-result v0

    if-lez v0, :cond_14

    .line 287
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum time must be smaller than the maximum time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_14
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mMinTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .line 289
    return-void
.end method

.method public setOkText(I)V
    .registers 3
    .param p1, "okResid"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkString:Ljava/lang/String;

    .line 399
    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkResid:I

    .line 400
    return-void
.end method

.method public setOkText(Ljava/lang/String;)V
    .registers 2
    .param p1, "okString"    # Ljava/lang/String;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOkString:Ljava/lang/String;

    .line 390
    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 2
    .param p1, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 366
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .registers 2
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 371
    return-void
.end method

.method public setOnTimeSetListener(Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;)V
    .registers 2
    .param p1, "callback"    # Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mCallback:Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;

    .line 362
    return-void
.end method

.method public setSelectableTimes([Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V
    .registers 3
    .param p1, "selectableTimes"    # [Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectableTimes:[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .line 305
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mSelectableTimes:[Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 306
    return-void
.end method

.method public setStartTime(II)V
    .registers 4
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    .line 380
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setStartTime(III)V

    .line 381
    return-void
.end method

.method public setStartTime(III)V
    .registers 5
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .prologue
    .line 374
    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-direct {v0, p1, p2, p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->roundToNearest(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInitialTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .line 375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mInKbMode:Z

    .line 376
    return-void
.end method

.method public setThemeDark(Z)V
    .registers 3
    .param p1, "dark"    # Z

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mThemeDark:Z

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mThemeDarkChanged:Z

    .line 219
    return-void
.end method

.method public setTimeInterval(I)V
    .registers 3
    .param p1, "hourInterval"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0x18L
        .end annotation
    .end param

    .prologue
    .line 357
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setTimeInterval(II)V

    .line 358
    return-void
.end method

.method public setTimeInterval(II)V
    .registers 4
    .param p1, "hourInterval"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0x18L
        .end annotation
    .end param
    .param p2, "minuteInterval"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0x3cL
        .end annotation
    .end param

    .prologue
    .line 346
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setTimeInterval(III)V

    .line 347
    return-void
.end method

.method public setTimeInterval(III)V
    .registers 10
    .param p1, "hourInterval"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0x18L
        .end annotation
    .end param
    .param p2, "minuteInterval"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0x3cL
        .end annotation
    .end param
    .param p3, "secondInterval"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x1L
            to = 0x3cL
        .end annotation
    .end param

    .prologue
    const/16 v5, 0x3c

    .line 319
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .local v3, "timepoints":Ljava/util/List;, "Ljava/util/List<Lcom/wdullaer/materialdatetimepicker/time/Timepoint;>;"
    const/4 v0, 0x0

    .line 322
    .local v0, "hour":I
    :goto_8
    const/16 v4, 0x18

    if-ge v0, v4, :cond_20

    .line 323
    const/4 v1, 0x0

    .line 324
    .local v1, "minute":I
    :goto_d
    if-ge v1, v5, :cond_1e

    .line 325
    const/4 v2, 0x0

    .line 326
    .local v2, "second":I
    :goto_10
    if-ge v2, v5, :cond_1c

    .line 327
    new-instance v4, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-direct {v4, v0, v1, v2}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    add-int/2addr v2, p3

    goto :goto_10

    .line 330
    :cond_1c
    add-int/2addr v1, p2

    .line 331
    goto :goto_d

    .line 332
    .end local v2    # "second":I
    :cond_1e
    add-int/2addr v0, p1

    .line 333
    goto :goto_8

    .line 334
    .end local v1    # "minute":I
    :cond_20
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {p0, v4}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->setSelectableTimes([Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V

    .line 335
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mTitle:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public tryVibrate()V
    .registers 2

    .prologue
    .line 703
    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mVibrate:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mHapticFeedbackController:Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;->tryVibrate()V

    .line 704
    :cond_9
    return-void
.end method

.method public vibrate(Z)V
    .registers 2
    .param p1, "vibrate"    # Z

    .prologue
    .line 261
    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;->mVibrate:Z

    .line 262
    return-void
.end method
