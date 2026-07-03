// recovered from: C:\Users\ufop\Downloads\192.168.8.17_8000\19.53_RunTime_AonB\??\p1612\ohos_patches__foundation__ability__ability_runtime__services__abilitymgr__include__mission__mission.h@95.html
// title: p1612 ohos_patches/foundation/ability/ability_runtime/services/abilitymgr/include/mission/mission.h:95
// summary: Mission::GetAbilityRecord</span><br><span>??OH ?????? Mission ?? Ability???????????abilityStack_?????? GetAbilityRecord() ???????????????????????????

   83:      *
   84:      * @return missionName.
   85:      */
   86:     std::string GetMissionName() const;
   87:  
   88:     /**
   89:      * @brief Get the top Ability Record (stack top).
   90:      * For single-ability missions (OH native), returns the only ability.
   91:      * For multi-ability missions (Android adapted), returns the stack top.
   92:      *
   93:      * @return MissionAbilityRecordPtr
   94:      */
   95:     MissionAbilityRecordPtr GetAbilityRecord() const;
   96:  
   97:     /**
   98:      * @brief Get the mission id
   99:      *
  100:      * @return the mission id
  101:      */
  102:     int32_t GetMissionId() const;
  103:  
  104:     /**
  105:      * @brief Set the Locked State
  106:      *
  107:      * @param lockedState true/false
