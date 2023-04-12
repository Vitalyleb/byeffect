package com.example.byeffect.Mappers;

import com.example.byeffect.DTO.EffectDto;
import com.example.byeffect.models.Effect;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.factory.Mappers;

@Mapper
public interface EffectMapper {
    EffectMapper INSTANCE = Mappers.getMapper(EffectMapper.class);

    @Mapping(target = "id",source = "id")
//    @Mapping(target = "preparations.id", source = "preparations.id")
//    @Mapping(target = "preparations.pre_name", source = "preparations.pre_name")
//    @Mapping(target = "preparations.effects", ignore = true)
    EffectDto toDTO(Effect effect);

}
