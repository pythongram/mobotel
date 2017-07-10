.class public Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;
.super Landroid/app/DialogFragment;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateChangedListener;,
        Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DELAY:I = 0x1f4

.field private static final ANIMATION_DURATION:I = 0x12c

.field private static DAY_FORMAT:Ljava/text/SimpleDateFormat; = null

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final KEY_ACCENT:Ljava/lang/String; = "accent"

.field private static final KEY_AUTO_DISMISS:Ljava/lang/String; = "auto_dismiss"

.field private static final KEY_CANCEL_RESID:Ljava/lang/String; = "cancel_resid"

.field private static final KEY_CANCEL_STRING:Ljava/lang/String; = "cancel_string"

.field private static final KEY_CURRENT_VIEW:Ljava/lang/String; = "current_view"

.field private static final KEY_DEFAULT_VIEW:Ljava/lang/String; = "default_view"

.field private static final KEY_DISMISS:Ljava/lang/String; = "dismiss"

.field private static final KEY_HIGHLIGHTED_DAYS:Ljava/lang/String; = "highlighted_days"

.field private static final KEY_LIST_POSITION:Ljava/lang/String; = "list_position"

.field private static final KEY_LIST_POSITION_OFFSET:Ljava/lang/String; = "list_position_offset"

.field private static final KEY_MAX_DATE:Ljava/lang/String; = "max_date"

.field private static final KEY_MIN_DATE:Ljava/lang/String; = "min_date"

.field private static final KEY_OK_RESID:Ljava/lang/String; = "ok_resid"

.field private static final KEY_OK_STRING:Ljava/lang/String; = "ok_string"

.field private static final KEY_SELECTABLE_DAYS:Ljava/lang/String; = "selectable_days"

.field private static final KEY_SELECTED_DAY:Ljava/lang/String; = "day"

.field private static final KEY_SELECTED_MONTH:Ljava/lang/String; = "month"

.field private static final KEY_SELECTED_YEAR:Ljava/lang/String; = "year"

.field private static final KEY_THEME_DARK:Ljava/lang/String; = "theme_dark"

.field private static final KEY_THEME_DARK_CHANGED:Ljava/lang/String; = "theme_dark_changed"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final KEY_VIBRATE:Ljava/lang/String; = "vibrate"

.field private static final KEY_WEEK_START:Ljava/lang/String; = "week_start"

.field private static final KEY_YEAR_END:Ljava/lang/String; = "year_end"

.field private static final KEY_YEAR_START:Ljava/lang/String; = "year_start"

.field private static final MONTH_AND_DAY_VIEW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DatePickerDialog"

.field private static final UNINITIALIZED:I = -0x1

.field private static YEAR_FORMAT:Ljava/text/SimpleDateFormat; = null

.field private static final YEAR_VIEW:I = 0x1


# instance fields
.field private highlightedDays:[Ljava/util/Calendar;

.field private mAccentColor:I

.field private mAnimator:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

.field private mAutoDismiss:Z

.field private final mCalendar:Ljava/util/Calendar;

.field private mCallBack:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateSetListener;

.field private mCancelResid:I

.field private mCancelString:Ljava/lang/String;

.field private mCurrentView:I

.field private mDayOfWeekView:Landroid/widget/TextView;

.field private mDayPickerDescription:Ljava/lang/String;

.field private mDayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;

.field private mDefaultView:I

.field private mDelayAnimation:Z

.field private mDismissOnPause:Z

.field private mHapticFeedbackController:Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;

.field private mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxDate:Ljava/util/Calendar;

.field private mMaxYear:I

.field private mMinDate:Ljava/util/Calendar;

.field private mMinYear:I

.field private mMonthAndDayView:Landroid/widget/LinearLayout;

.field private mOkResid:I

.field private mOkString:Ljava/lang/String;

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mSelectDay:Ljava/lang/String;

.field private mSelectYear:Ljava/lang/String;

.field private mSelectedDayTextView:Landroid/widget/TextView;

.field private mSelectedMonthTextView:Landroid/widget/TextView;

.field private mThemeDark:Z

.field private mThemeDarkChanged:Z

.field private mTitle:Ljava/lang/String;

.field private mVibrate:Z

.field private mWeekStart:I

.field private mYearPickerDescription:Ljava/lang/String;

.field private mYearPickerView:Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;

.field private mYearView:Landroid/widget/TextView;

.field private selectableDays:[Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 101
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->YEAR_FORMAT:Ljava/text/SimpleDateFormat;

    .line 102
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 176
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 104
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 106
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mListeners:Ljava/util/HashSet;

    .line 120
    iput v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCurrentView:I

    .line 122
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mWeekStart:I

    .line 123
    const/16 v0, 0x76c

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMinYear:I

    .line 124
    const/16 v0, 0x834

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMaxYear:I

    .line 130
    iput-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mThemeDark:Z

    .line 131
    iput-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mThemeDarkChanged:Z

    .line 132
    iput v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAccentColor:I

    .line 133
    iput-boolean v3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mVibrate:Z

    .line 134
    iput-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDismissOnPause:Z

    .line 135
    iput-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAutoDismiss:Z

    .line 136
    iput v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDefaultView:I

    .line 137
    sget v0, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_ok:I

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOkResid:I

    .line 139
    sget v0, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_cancel:I

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCancelResid:I

    .line 144
    iput-boolean v3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDelayAnimation:Z

    .line 178
    return-void
.end method

.method private adjustDayInMonthIfNeeded(Ljava/util/Calendar;)V
    .registers 5
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    const/4 v2, 0x5

    .line 744
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 745
    .local v0, "day":I
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 746
    .local v1, "daysInMonth":I
    if-le v0, v1, :cond_e

    .line 747
    invoke-virtual {p1, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 749
    :cond_e
    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->setToNearestDate(Ljava/util/Calendar;)V

    .line 750
    return-void
.end method

.method private isAfterMax(III)Z
    .registers 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 906
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMaxDate:Ljava/util/Calendar;

    if-nez v2, :cond_8

    .line 925
    :cond_7
    :goto_7
    return v0

    .line 910
    :cond_8
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-le p1, v2, :cond_12

    move v0, v1

    .line 911
    goto :goto_7

    .line 912
    :cond_12
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-lt p1, v2, :cond_7

    .line 916
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-le p2, v2, :cond_24

    move v0, v1

    .line 917
    goto :goto_7

    .line 918
    :cond_24
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-lt p2, v2, :cond_7

    .line 922
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMaxDate:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-le p3, v2, :cond_7

    move v0, v1

    .line 923
    goto :goto_7
.end method

.method private isAfterMax(Ljava/util/Calendar;)Z
    .registers 5
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 930
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->isAfterMax(III)Z

    move-result v0

    return v0
.end method

.method private isBeforeMin(III)Z
    .registers 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 874
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMinDate:Ljava/util/Calendar;

    if-nez v2, :cond_8

    .line 893
    :cond_7
    :goto_7
    return v0

    .line 878
    :cond_8
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge p1, v2, :cond_12

    move v0, v1

    .line 879
    goto :goto_7

    .line 880
    :cond_12
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-gt p1, v2, :cond_7

    .line 884
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge p2, v2, :cond_24

    move v0, v1

    .line 885
    goto :goto_7

    .line 886
    :cond_24
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-gt p2, v2, :cond_7

    .line 890
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMinDate:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge p3, v2, :cond_7

    move v0, v1

    .line 891
    goto :goto_7
.end method

.method private isBeforeMin(Ljava/util/Calendar;)Z
    .registers 5
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 898
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->isBeforeMin(III)Z

    move-result v0

    return v0
.end method

.method private isSelectable(III)Z
    .registers 12
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v4, 0x1

    .line 861
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->selectableDays:[Ljava/util/Calendar;

    .local v0, "arr$":[Ljava/util/Calendar;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_7
    if-ge v2, v3, :cond_11

    aget-object v1, v0, v2

    .line 862
    .local v1, "c":Ljava/util/Calendar;
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ge p1, v5, :cond_13

    .line 870
    .end local v1    # "c":Ljava/util/Calendar;
    :cond_11
    const/4 v4, 0x0

    :cond_12
    return v4

    .line 863
    .restart local v1    # "c":Ljava/util/Calendar;
    :cond_13
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-le p1, v5, :cond_1c

    .line 861
    :cond_19
    :goto_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 864
    :cond_1c
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-lt p2, v5, :cond_11

    .line 865
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-gt p2, v5, :cond_19

    .line 866
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-lt p3, v5, :cond_11

    .line 867
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-le p3, v5, :cond_12

    goto :goto_19
.end method

.method public static newInstance(Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateSetListener;III)Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;
    .registers 5
    .param p0, "callBack"    # Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateSetListener;
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 189
    new-instance v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;

    invoke-direct {v0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;-><init>()V

    .line 190
    .local v0, "ret":Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->initialize(Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateSetListener;III)V

    .line 191
    return-object v0
.end method

.method private setCurrentView(I)V
    .registers 16
    .param p1, "viewIndex"    # I

    .prologue
    const-wide/16 v12, 0x1f4

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 416
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 418
    .local v2, "millis":J
    packed-switch p1, :pswitch_data_d4

    .line 460
    :goto_d
    return-void

    .line 420
    :pswitch_e
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMonthAndDayView:Landroid/widget/LinearLayout;

    const v7, 0x3f666666

    const v8, 0x3f866666

    invoke-static {v6, v7, v8}, Lcom/wdullaer/materialdatetimepicker/Utils;->getPulseAnimator(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 422
    .local v4, "pulseAnimator":Landroid/animation/ObjectAnimator;
    iget-boolean v6, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDelayAnimation:Z

    if-eqz v6, :cond_23

    .line 423
    invoke-virtual {v4, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 424
    iput-boolean v9, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDelayAnimation:Z

    .line 426
    :cond_23
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;

    invoke-virtual {v6}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->onDateChanged()V

    .line 427
    iget v6, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCurrentView:I

    if-eq v6, p1, :cond_3d

    .line 428
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMonthAndDayView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 429
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mYearView:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 430
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAnimator:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v6, v9}, Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;->setDisplayedChild(I)V

    .line 431
    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCurrentView:I

    .line 433
    :cond_3d
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 435
    const/16 v1, 0x10

    .line 436
    .local v1, "flags":I
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v2, v3, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "dayString":Ljava/lang/String;
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAnimator:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDayPickerDescription:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAnimator:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mSelectDay:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 441
    .end local v0    # "dayString":Ljava/lang/String;
    .end local v1    # "flags":I
    .end local v4    # "pulseAnimator":Landroid/animation/ObjectAnimator;
    :pswitch_70
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mYearView:Landroid/widget/TextView;

    const v7, 0x3f59999a

    const v8, 0x3f8ccccd

    invoke-static {v6, v7, v8}, Lcom/wdullaer/materialdatetimepicker/Utils;->getPulseAnimator(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 442
    .restart local v4    # "pulseAnimator":Landroid/animation/ObjectAnimator;
    iget-boolean v6, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDelayAnimation:Z

    if-eqz v6, :cond_85

    .line 443
    invoke-virtual {v4, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 444
    iput-boolean v9, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDelayAnimation:Z

    .line 446
    :cond_85
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mYearPickerView:Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;

    invoke-virtual {v6}, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;->onDateChanged()V

    .line 447
    iget v6, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCurrentView:I

    if-eq v6, p1, :cond_9f

    .line 448
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMonthAndDayView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 449
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mYearView:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setSelected(Z)V

    .line 450
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAnimator:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v6, v10}, Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;->setDisplayedChild(I)V

    .line 451
    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCurrentView:I

    .line 453
    :cond_9f
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 455
    sget-object v6, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->YEAR_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 456
    .local v5, "yearString":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAnimator:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mYearPickerDescription:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAnimator:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mSelectYear:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 418
    nop

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_e
        :pswitch_70
    .end packed-switch
.end method

.method private setToNearestDate(Ljava/util/Calendar;)V
    .registers 16
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 938
    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->selectableDays:[Ljava/util/Calendar;

    if-eqz v7, :cond_30

    .line 939
    const-wide v4, 0x7fffffffffffffffL

    .line 940
    .local v4, "distance":J
    move-object v2, p1

    .line 941
    .local v2, "currentBest":Ljava/util/Calendar;
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->selectableDays:[Ljava/util/Calendar;

    .local v0, "arr$":[Ljava/util/Calendar;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_e
    if-ge v3, v6, :cond_28

    aget-object v1, v0, v3

    .line 942
    .local v1, "c":Ljava/util/Calendar;
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    .line 943
    .local v8, "newDistance":J
    cmp-long v7, v8, v4

    if-gez v7, :cond_28

    .line 944
    move-wide v4, v8

    .line 945
    move-object v2, v1

    .line 941
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 949
    .end local v1    # "c":Ljava/util/Calendar;
    .end local v8    # "newDistance":J
    :cond_28
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {p1, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 962
    .end local v0    # "arr$":[Ljava/util/Calendar;
    .end local v2    # "currentBest":Ljava/util/Calendar;
    .end local v3    # "i$":I
    .end local v4    # "distance":J
    .end local v6    # "len$":I
    :cond_2f
    :goto_2f
    return-void

    .line 953
    :cond_30
    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->isBeforeMin(Ljava/util/Calendar;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 954
    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {p1, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_2f

    .line 958
    :cond_40
    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->isAfterMax(Ljava/util/Calendar;)Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 959
    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {p1, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_2f
.end method

.method private updateDisplay(Z)V
    .registers 12
    .param p1, "announce"    # Z

    .prologue
    const/4 v9, 0x2

    .line 463
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDayOfWeekView:Landroid/widget/TextView;

    if-eqz v5, :cond_18

    .line 464
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mTitle:Ljava/lang/String;

    if-eqz v5, :cond_7e

    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDayOfWeekView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mTitle:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    :cond_18
    :goto_18
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mSelectedMonthTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v7, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v6, v9, v7, v8}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mSelectedDayTextView:Landroid/widget/TextView;

    sget-object v6, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->DAY_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mYearView:Landroid/widget/TextView;

    sget-object v6, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->YEAR_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 478
    .local v2, "millis":J
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAnimator:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v5, v2, v3}, Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;->setDateMillis(J)V

    .line 479
    const/16 v0, 0x18

    .line 480
    .local v0, "flags":I
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    .line 481
    .local v4, "monthAndDayText":Ljava/lang/String;
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMonthAndDayView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 483
    if-eqz p1, :cond_7d

    .line 484
    const/16 v0, 0x14

    .line 485
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 486
    .local v1, "fullDateText":Ljava/lang/String;
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAnimator:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    invoke-static {v5, v1}, Lcom/wdullaer/materialdatetimepicker/Utils;->tryAccessibilityAnnounce(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 488
    .end local v1    # "fullDateText":Ljava/lang/String;
    :cond_7d
    return-void

    .line 466
    .end local v0    # "flags":I
    .end local v2    # "millis":J
    .end local v4    # "monthAndDayText":Ljava/lang/String;
    :cond_7e
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDayOfWeekView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v7, 0x7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v6, v7, v9, v8}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_18
.end method

.method private updatePickers()V
    .registers 4

    .prologue
    .line 785
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateChangedListener;

    .local v1, "listener":Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateChangedListener;
    invoke-interface {v1}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateChangedListener;->onDateChanged()V

    goto :goto_6

    .line 786
    .end local v1    # "listener":Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateChangedListener;
    :cond_16
    return-void
.end method


# virtual methods
.method public autoDismiss(Z)V
    .registers 2
    .param p1, "autoDismiss"    # Z

    .prologue
    .line 512
    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAutoDismiss:Z

    .line 513
    return-void
.end method

.method public dismissOnPause(Z)V
    .registers 2
    .param p1, "dismissOnPause"    # Z

    .prologue
    .line 503
    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDismissOnPause:Z

    .line 504
    return-void
.end method

.method public getAccentColor()I
    .registers 2

    .prologue
    .line 559
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAccentColor:I

    return v0
.end method

.method public getEndDate()Ljava/util/Calendar;
    .registers 4

    .prologue
    .line 807
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->selectableDays:[Ljava/util/Calendar;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->selectableDays:[Ljava/util/Calendar;

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->selectableDays:[Ljava/util/Calendar;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    .line 813
    :goto_d
    return-object v0

    .line 808
    :cond_e
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMaxDate:Ljava/util/Calendar;

    if-eqz v1, :cond_15

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMaxDate:Ljava/util/Calendar;

    goto :goto_d

    .line 809
    :cond_15
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 810
    .local v0, "output":Ljava/util/Calendar;
    const/4 v1, 0x1

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMaxYear:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 811
    const/4 v1, 0x5

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 812
    const/4 v1, 0x2

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_d
.end method

.method public getFirstDayOfWeek()I
    .registers 2

    .prologue
    .line 966
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mWeekStart:I

    return v0
.end method

.method public getHighlightedDays()[Ljava/util/Calendar;
    .registers 2

    .prologue
    .line 655
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->highlightedDays:[Ljava/util/Calendar;

    return-object v0
.end method

.method public getMaxDate()Ljava/util/Calendar;
    .registers 2

    .prologue
    .line 636
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMaxYear()I
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 825
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->selectableDays:[Ljava/util/Calendar;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->selectableDays:[Ljava/util/Calendar;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->selectableDays:[Ljava/util/Calendar;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 827
    :goto_12
    return v0

    :cond_13
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMaxDate:Ljava/util/Calendar;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMaxYear:I

    if-ge v0, v1, :cond_28

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    goto :goto_12

    :cond_28
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMaxYear:I

    goto :goto_12
.end method

.method public getMinDate()Ljava/util/Calendar;
    .registers 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMinYear()I
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 818
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->selectableDays:[Ljava/util/Calendar;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->selectableDays:[Ljava/util/Calendar;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 820
    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMinDate:Ljava/util/Calendar;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMinYear:I

    if-le v0, v1, :cond_24

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    goto :goto_e

    :cond_24
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMinYear:I

    goto :goto_e
.end method

.method public getSelectableDays()[Ljava/util/Calendar;
    .registers 2

    .prologue
    .line 675
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->selectableDays:[Ljava/util/Calendar;

    return-object v0
.end method

.method public getSelectedDay()Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;
    .registers 3

    .prologue
    .line 791
    new-instance v0, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/date/MonthAdapter$CalendarDay;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public getStartDate()Ljava/util/Calendar;
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 796
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->selectableDays:[Ljava/util/Calendar;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->selectableDays:[Ljava/util/Calendar;

    aget-object v0, v1, v2

    .line 802
    :goto_a
    return-object v0

    .line 797
    :cond_b
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMinDate:Ljava/util/Calendar;

    if-eqz v1, :cond_12

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMinDate:Ljava/util/Calendar;

    goto :goto_a

    .line 798
    :cond_12
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 799
    .local v0, "output":Ljava/util/Calendar;
    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMinYear:I

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 800
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 801
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_a
.end method

.method public initialize(Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateSetListener;III)V
    .registers 7
    .param p1, "callBack"    # Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateSetListener;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 195
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCallBack:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateSetListener;

    .line 196
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 197
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 198
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 199
    return-void
.end method

.method public isOutOfRange(III)Z
    .registers 7
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 837
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->selectableDays:[Ljava/util/Calendar;

    if-eqz v2, :cond_f

    .line 838
    invoke-direct {p0, p1, p2, p3}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->isSelectable(III)Z

    move-result v2

    if-nez v2, :cond_d

    .line 848
    :cond_c
    :goto_c
    return v0

    :cond_d
    move v0, v1

    .line 838
    goto :goto_c

    .line 841
    :cond_f
    invoke-direct {p0, p1, p2, p3}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->isBeforeMin(III)Z

    move-result v2

    if-nez v2, :cond_c

    .line 844
    invoke-direct {p0, p1, p2, p3}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->isAfterMax(III)Z

    move-result v2

    if-nez v2, :cond_c

    move v0, v1

    .line 848
    goto :goto_c
.end method

.method public isOutOfRange(Ljava/util/Calendar;)Z
    .registers 5
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 853
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->isOutOfRange(III)Z

    move-result v0

    return v0
.end method

.method public isThemeDark()Z
    .registers 2

    .prologue
    .line 530
    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mThemeDark:Z

    return v0
.end method

.method public notifyOnDateListener()V
    .registers 6

    .prologue
    .line 985
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCallBack:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_1e

    .line 986
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCallBack:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateSetListener;->onDateSet(Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;III)V

    .line 989
    :cond_1e
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 405
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 406
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 407
    :cond_c
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 754
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->tryVibrate()V

    .line 755
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/wdullaer/materialdatetimepicker/R$id;->date_picker_year:I

    if-ne v0, v1, :cond_10

    .line 756
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->setCurrentView(I)V

    .line 760
    :cond_f
    :goto_f
    return-void

    .line 757
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/wdullaer/materialdatetimepicker/R$id;->date_picker_month_and_day:I

    if-ne v0, v1, :cond_f

    .line 758
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->setCurrentView(I)V

    goto :goto_f
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 204
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 205
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 207
    const/4 v1, -0x1

    iput v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCurrentView:I

    .line 208
    if-eqz p1, :cond_40

    .line 209
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    const-string v3, "year"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 210
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    const-string v3, "month"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 211
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    const-string v3, "day"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 212
    const-string v1, "default_view"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDefaultView:I

    .line 214
    :cond_40
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 385
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 386
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 387
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 20
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 255
    const-string v13, "DatePickerDialog"

    const-string v14, "onCreateView: "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->setToNearestDate(Ljava/util/Calendar;)V

    .line 260
    sget v13, Lcom/wdullaer/materialdatetimepicker/R$layout;->mdtp_date_picker_dialog:I

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v13, v1, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 262
    .local v12, "view":Landroid/view/View;
    sget v13, Lcom/wdullaer/materialdatetimepicker/R$id;->date_picker_header:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDayOfWeekView:Landroid/widget/TextView;

    .line 263
    sget v13, Lcom/wdullaer/materialdatetimepicker/R$id;->date_picker_month_and_day:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMonthAndDayView:Landroid/widget/LinearLayout;

    .line 264
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMonthAndDayView:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    sget v13, Lcom/wdullaer/materialdatetimepicker/R$id;->date_picker_month:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mSelectedMonthTextView:Landroid/widget/TextView;

    .line 266
    sget v13, Lcom/wdullaer/materialdatetimepicker/R$id;->date_picker_day:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mSelectedDayTextView:Landroid/widget/TextView;

    .line 267
    sget v13, Lcom/wdullaer/materialdatetimepicker/R$id;->date_picker_year:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mYearView:Landroid/widget/TextView;

    .line 268
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mYearView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    const/4 v8, -0x1

    .line 271
    .local v8, "listPosition":I
    const/4 v9, 0x0

    .line 272
    .local v9, "listPositionOffset":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDefaultView:I

    .line 273
    .local v7, "currentView":I
    if-eqz p3, :cond_16d

    .line 274
    const-string v13, "week_start"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mWeekStart:I

    .line 275
    const-string v13, "year_start"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMinYear:I

    .line 276
    const-string v13, "year_end"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMaxYear:I

    .line 277
    const-string v13, "current_view"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 278
    const-string v13, "list_position"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 279
    const-string v13, "list_position_offset"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 280
    const-string v13, "min_date"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v13

    check-cast v13, Ljava/util/Calendar;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMinDate:Ljava/util/Calendar;

    .line 281
    const-string v13, "max_date"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v13

    check-cast v13, Ljava/util/Calendar;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMaxDate:Ljava/util/Calendar;

    .line 282
    const-string v13, "highlighted_days"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v13

    check-cast v13, [Ljava/util/Calendar;

    check-cast v13, [Ljava/util/Calendar;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->highlightedDays:[Ljava/util/Calendar;

    .line 283
    const-string v13, "selectable_days"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v13

    check-cast v13, [Ljava/util/Calendar;

    check-cast v13, [Ljava/util/Calendar;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->selectableDays:[Ljava/util/Calendar;

    .line 284
    const-string v13, "theme_dark"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mThemeDark:Z

    .line 285
    const-string v13, "theme_dark_changed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mThemeDarkChanged:Z

    .line 286
    const-string v13, "accent"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAccentColor:I

    .line 287
    const-string v13, "vibrate"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mVibrate:Z

    .line 288
    const-string v13, "dismiss"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDismissOnPause:Z

    .line 289
    const-string v13, "auto_dismiss"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAutoDismiss:Z

    .line 290
    const-string v13, "title"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mTitle:Ljava/lang/String;

    .line 291
    const-string v13, "ok_resid"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOkResid:I

    .line 292
    const-string v13, "ok_string"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOkString:Ljava/lang/String;

    .line 293
    const-string v13, "cancel_resid"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCancelResid:I

    .line 294
    const-string v13, "cancel_string"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCancelString:Ljava/lang/String;

    .line 297
    :cond_16d
    invoke-virtual/range {p0 .. p0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 298
    .local v2, "activity":Landroid/app/Activity;
    new-instance v13, Lcom/wdullaer/materialdatetimepicker/date/SimpleDayPickerView;

    move-object/from16 v0, p0

    invoke-direct {v13, v2, v0}, Lcom/wdullaer/materialdatetimepicker/date/SimpleDayPickerView;-><init>(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;

    .line 299
    new-instance v13, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;

    move-object/from16 v0, p0

    invoke-direct {v13, v2, v0}, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;-><init>(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/date/DatePickerController;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mYearPickerView:Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;

    .line 302
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mThemeDarkChanged:Z

    if-nez v13, :cond_199

    .line 303
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mThemeDark:Z

    invoke-static {v2, v13}, Lcom/wdullaer/materialdatetimepicker/Utils;->isDarkTheme(Landroid/content/Context;Z)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mThemeDark:Z

    .line 306
    :cond_199
    invoke-virtual/range {p0 .. p0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 307
    .local v11, "res":Landroid/content/res/Resources;
    sget v13, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_day_picker_description:I

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDayPickerDescription:Ljava/lang/String;

    .line 308
    sget v13, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_select_day:I

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mSelectDay:Ljava/lang/String;

    .line 309
    sget v13, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_year_picker_description:I

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mYearPickerDescription:Ljava/lang/String;

    .line 310
    sget v13, Lcom/wdullaer/materialdatetimepicker/R$string;->mdtp_select_year:I

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mSelectYear:Ljava/lang/String;

    .line 312
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mThemeDark:Z

    if-eqz v13, :cond_2fc

    sget v5, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_date_picker_view_animator_dark_theme:I

    .line 313
    .local v5, "bgColorResource":I
    :goto_1cd
    invoke-static {v2, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/view/View;->setBackgroundColor(I)V

    .line 315
    sget v13, Lcom/wdullaer/materialdatetimepicker/R$id;->animator:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAnimator:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    .line 316
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAnimator:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;

    invoke-virtual {v13, v14}, Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;->addView(Landroid/view/View;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAnimator:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mYearPickerView:Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;

    invoke-virtual {v13, v14}, Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;->addView(Landroid/view/View;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAnimator:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;->setDateMillis(J)V

    .line 320
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v3, v13, v14}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 321
    .local v3, "animation":Landroid/view/animation/Animation;
    const-wide/16 v14, 0x12c

    invoke-virtual {v3, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 322
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAnimator:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v13, v3}, Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 324
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    invoke-direct {v4, v13, v14}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 325
    .local v4, "animation2":Landroid/view/animation/Animation;
    const-wide/16 v14, 0x12c

    invoke-virtual {v4, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 326
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAnimator:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v13, v4}, Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 328
    sget v13, Lcom/wdullaer/materialdatetimepicker/R$id;->ok:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 329
    .local v10, "okButton":Landroid/widget/Button;
    new-instance v13, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$1;-><init>(Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;)V

    invoke-virtual {v10, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    const-string v13, "Roboto-Medium"

    invoke-static {v2, v13}, Lcom/wdullaer/materialdatetimepicker/TypefaceHelper;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOkString:Ljava/lang/String;

    if-eqz v13, :cond_300

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOkString:Ljava/lang/String;

    invoke-virtual {v10, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 342
    :goto_255
    sget v13, Lcom/wdullaer/materialdatetimepicker/R$id;->cancel:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 343
    .local v6, "cancelButton":Landroid/widget/Button;
    new-instance v13, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$2;-><init>(Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;)V

    invoke-virtual {v6, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    const-string v13, "Roboto-Medium"

    invoke-static {v2, v13}, Lcom/wdullaer/materialdatetimepicker/TypefaceHelper;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCancelString:Ljava/lang/String;

    if-eqz v13, :cond_309

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCancelString:Ljava/lang/String;

    invoke-virtual {v6, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 353
    :goto_27d
    invoke-virtual/range {p0 .. p0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->isCancelable()Z

    move-result v13

    if-eqz v13, :cond_312

    const/4 v13, 0x0

    :goto_284
    invoke-virtual {v6, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 356
    move-object/from16 v0, p0

    iget v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAccentColor:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_29a

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/wdullaer/materialdatetimepicker/Utils;->getAccentColorFromThemeIfAvailable(Landroid/content/Context;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAccentColor:I

    .line 359
    :cond_29a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDayOfWeekView:Landroid/widget/TextView;

    if-eqz v13, :cond_2af

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDayOfWeekView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAccentColor:I

    invoke-static {v14}, Lcom/wdullaer/materialdatetimepicker/Utils;->darkenColor(I)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 360
    :cond_2af
    sget v13, Lcom/wdullaer/materialdatetimepicker/R$id;->day_picker_selected_date_layout:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAccentColor:I

    invoke-virtual {v13, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 361
    move-object/from16 v0, p0

    iget v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAccentColor:I

    invoke-virtual {v10, v13}, Landroid/widget/Button;->setTextColor(I)V

    .line 362
    move-object/from16 v0, p0

    iget v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAccentColor:I

    invoke-virtual {v6, v13}, Landroid/widget/Button;->setTextColor(I)V

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v13

    if-nez v13, :cond_2db

    .line 365
    sget v13, Lcom/wdullaer/materialdatetimepicker/R$id;->done_background:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 368
    :cond_2db
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->updateDisplay(Z)V

    .line 369
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->setCurrentView(I)V

    .line 371
    const/4 v13, -0x1

    if-eq v8, v13, :cond_2f2

    .line 372
    if-nez v7, :cond_316

    .line 373
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;

    invoke-virtual {v13, v8}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->postSetSelection(I)V

    .line 379
    :cond_2f2
    :goto_2f2
    new-instance v13, Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;

    invoke-direct {v13, v2}, Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mHapticFeedbackController:Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;

    .line 380
    return-object v12

    .line 312
    .end local v3    # "animation":Landroid/view/animation/Animation;
    .end local v4    # "animation2":Landroid/view/animation/Animation;
    .end local v5    # "bgColorResource":I
    .end local v6    # "cancelButton":Landroid/widget/Button;
    .end local v10    # "okButton":Landroid/widget/Button;
    :cond_2fc
    sget v5, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_date_picker_view_animator:I

    goto/16 :goto_1cd

    .line 340
    .restart local v3    # "animation":Landroid/view/animation/Animation;
    .restart local v4    # "animation2":Landroid/view/animation/Animation;
    .restart local v5    # "bgColorResource":I
    .restart local v10    # "okButton":Landroid/widget/Button;
    :cond_300
    move-object/from16 v0, p0

    iget v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOkResid:I

    invoke-virtual {v10, v13}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_255

    .line 352
    .restart local v6    # "cancelButton":Landroid/widget/Button;
    :cond_309
    move-object/from16 v0, p0

    iget v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCancelResid:I

    invoke-virtual {v6, v13}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_27d

    .line 353
    :cond_312
    const/16 v13, 0x8

    goto/16 :goto_284

    .line 374
    :cond_316
    const/4 v13, 0x1

    if-ne v7, v13, :cond_2f2

    .line 375
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mYearPickerView:Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;

    invoke-virtual {v13, v8, v9}, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;->postSetSelectionFromTop(II)V

    goto :goto_2f2
.end method

.method public onDayOfMonthSelected(III)V
    .registers 7
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    const/4 v2, 0x1

    .line 773
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 774
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 775
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 776
    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->updatePickers()V

    .line 777
    invoke-direct {p0, v2}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->updateDisplay(Z)V

    .line 778
    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAutoDismiss:Z

    if-eqz v0, :cond_22

    .line 779
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->notifyOnDateListener()V

    .line 780
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->dismiss()V

    .line 782
    :cond_22
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 411
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 412
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 413
    :cond_c
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 398
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 399
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mHapticFeedbackController:Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;->stop()V

    .line 400
    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDismissOnPause:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->dismiss()V

    .line 401
    :cond_f
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 392
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 393
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mHapticFeedbackController:Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;->start()V

    .line 394
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    .line 218
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 219
    const-string v1, "year"

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    const-string v1, "month"

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    const-string v1, "day"

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 222
    const-string v1, "week_start"

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mWeekStart:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 223
    const-string v1, "year_start"

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMinYear:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    const-string v1, "year_end"

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMaxYear:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 225
    const-string v1, "current_view"

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCurrentView:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    const/4 v0, -0x1

    .line 227
    .local v0, "listPosition":I
    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCurrentView:I

    if-nez v1, :cond_c4

    .line 228
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->getMostVisiblePosition()I

    move-result v0

    .line 233
    :cond_4e
    :goto_4e
    const-string v1, "list_position"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 234
    const-string v1, "min_date"

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 235
    const-string v1, "max_date"

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 236
    const-string v1, "highlighted_days"

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->highlightedDays:[Ljava/util/Calendar;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 237
    const-string v1, "selectable_days"

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->selectableDays:[Ljava/util/Calendar;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 238
    const-string v1, "theme_dark"

    iget-boolean v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mThemeDark:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 239
    const-string v1, "theme_dark_changed"

    iget-boolean v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mThemeDarkChanged:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 240
    const-string v1, "accent"

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAccentColor:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 241
    const-string v1, "vibrate"

    iget-boolean v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mVibrate:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 242
    const-string v1, "dismiss"

    iget-boolean v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDismissOnPause:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 243
    const-string v1, "auto_dismiss"

    iget-boolean v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAutoDismiss:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 244
    const-string v1, "default_view"

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDefaultView:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 245
    const-string v1, "title"

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v1, "ok_resid"

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOkResid:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 247
    const-string v1, "ok_string"

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOkString:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v1, "cancel_resid"

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCancelResid:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 249
    const-string v1, "cancel_string"

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCancelString:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void

    .line 229
    :cond_c4
    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCurrentView:I

    if-ne v1, v4, :cond_4e

    .line 230
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mYearPickerView:Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;->getFirstVisiblePosition()I

    move-result v0

    .line 231
    const-string v1, "list_position_offset"

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mYearPickerView:Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/date/YearPickerView;->getFirstPositionOffset()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_4e
.end method

.method public onYearSelected(I)V
    .registers 4
    .param p1, "year"    # I

    .prologue
    const/4 v1, 0x1

    .line 764
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 765
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->adjustDayInMonthIfNeeded(Ljava/util/Calendar;)V

    .line 766
    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->updatePickers()V

    .line 767
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->setCurrentView(I)V

    .line 768
    invoke-direct {p0, v1}, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->updateDisplay(Z)V

    .line 769
    return-void
.end method

.method public registerOnDateChangedListener(Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateChangedListener;

    .prologue
    .line 971
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 972
    return-void
.end method

.method public setAccentColor(I)V
    .registers 6
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 550
    const/16 v0, 0xff

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAccentColor:I

    .line 551
    return-void
.end method

.method public setAccentColor(Ljava/lang/String;)V
    .registers 4
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 539
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mAccentColor:I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6} :catch_7

    .line 543
    return-void

    .line 540
    :catch_7
    move-exception v0

    .line 541
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
    .line 720
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCancelString:Ljava/lang/String;

    .line 721
    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCancelResid:I

    .line 722
    return-void
.end method

.method public setCancelText(Ljava/lang/String;)V
    .registers 2
    .param p1, "cancelString"    # Ljava/lang/String;

    .prologue
    .line 711
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCancelString:Ljava/lang/String;

    .line 712
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .registers 4
    .param p1, "startOfWeek"    # I

    .prologue
    .line 572
    const/4 v0, 0x1

    if-lt p1, v0, :cond_6

    const/4 v0, 0x7

    if-le p1, v0, :cond_e

    .line 573
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value must be between Calendar.SUNDAY and Calendar.SATURDAY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_e
    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mWeekStart:I

    .line 577
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;

    if-eqz v0, :cond_19

    .line 578
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->onChange()V

    .line 580
    :cond_19
    return-void
.end method

.method public setHighlightedDays([Ljava/util/Calendar;)V
    .registers 2
    .param p1, "highlightedDays"    # [Ljava/util/Calendar;

    .prologue
    .line 646
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 647
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->highlightedDays:[Ljava/util/Calendar;

    .line 648
    return-void
.end method

.method public setMaxDate(Ljava/util/Calendar;)V
    .registers 3
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 624
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMaxDate:Ljava/util/Calendar;

    .line 626
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;

    if-eqz v0, :cond_b

    .line 627
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->onChange()V

    .line 629
    :cond_b
    return-void
.end method

.method public setMinDate(Ljava/util/Calendar;)V
    .registers 3
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 602
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMinDate:Ljava/util/Calendar;

    .line 604
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;

    if-eqz v0, :cond_b

    .line 605
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->onChange()V

    .line 607
    :cond_b
    return-void
.end method

.method public setOkText(I)V
    .registers 3
    .param p1, "okResid"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 701
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOkString:Ljava/lang/String;

    .line 702
    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOkResid:I

    .line 703
    return-void
.end method

.method public setOkText(Ljava/lang/String;)V
    .registers 2
    .param p1, "okString"    # Ljava/lang/String;

    .prologue
    .line 692
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOkString:Ljava/lang/String;

    .line 693
    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 2
    .param p1, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 731
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 732
    return-void
.end method

.method public setOnDateSetListener(Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateSetListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateSetListener;

    .prologue
    .line 726
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mCallBack:Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateSetListener;

    .line 727
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .registers 2
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 736
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 737
    return-void
.end method

.method public setSelectableDays([Ljava/util/Calendar;)V
    .registers 2
    .param p1, "selectableDays"    # [Ljava/util/Calendar;

    .prologue
    .line 666
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 667
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->selectableDays:[Ljava/util/Calendar;

    .line 668
    return-void
.end method

.method public setThemeDark(Z)V
    .registers 3
    .param p1, "themeDark"    # Z

    .prologue
    .line 520
    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mThemeDark:Z

    .line 521
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mThemeDarkChanged:Z

    .line 522
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 683
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mTitle:Ljava/lang/String;

    .line 684
    return-void
.end method

.method public setYearRange(II)V
    .registers 5
    .param p1, "startYear"    # I
    .param p2, "endYear"    # I

    .prologue
    .line 584
    if-ge p2, p1, :cond_a

    .line 585
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Year end must be larger than or equal to year start"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 588
    :cond_a
    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMinYear:I

    .line 589
    iput p2, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mMaxYear:I

    .line 590
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;

    if-eqz v0, :cond_17

    .line 591
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDayPickerView:Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/date/DayPickerView;->onChange()V

    .line 593
    :cond_17
    return-void
.end method

.method public showYearPickerFirst(Z)V
    .registers 3
    .param p1, "yearPicker"    # Z

    .prologue
    .line 567
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mDefaultView:I

    .line 568
    return-void

    .line 567
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public tryVibrate()V
    .registers 2

    .prologue
    .line 981
    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mVibrate:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mHapticFeedbackController:Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/HapticFeedbackController;->tryVibrate()V

    .line 982
    :cond_9
    return-void
.end method

.method public unregisterOnDateChangedListener(Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog$OnDateChangedListener;

    .prologue
    .line 976
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 977
    return-void
.end method

.method public vibrate(Z)V
    .registers 2
    .param p1, "vibrate"    # Z

    .prologue
    .line 495
    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/date/DatePickerDialog;->mVibrate:Z

    .line 496
    return-void
.end method
